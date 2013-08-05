-- Copyright © 2013 Bart Massey
-- This program is licensed under the GPL version 2 or later.
-- Please see the file COPYING in this distribution for
-- license terms.

import Data.Char
import Data.List (find)
import Text.Printf

data Field = FieldString String | FieldChar Char | 
             FieldSigned Integer | FieldUnsigned Integer |
             FieldPointer Integer | FieldFloating Double |
             FieldAntiTest

parseFields :: String -> [Field]
parseFields "" = []
parseFields (' ' : cs) = parseFields cs
parseFields ('?' : cs) = FieldAntiTest : parseFields cs
parseFields ('\'' : c : '\'' : cs) = FieldChar c : parseFields cs
parseFields cs@(c : _) | isNumeric c =
  let (s, cs') = span isNumeric cs in
  case isIntegral s of
    True ->
      let i = case s of
            "" -> error "stray minus sign in input"
            _ -> read s :: Integer 
      in
       case i >= 0 of
         True ->
           case cs' of
             'U' : 'L' : 'L' : cs'' -> FieldUnsigned i : parseFields cs''
             'U' : cs'' -> FieldUnsigned i : parseFields cs''
             'L' : 'L' : cs'' -> FieldSigned i : parseFields cs''
             'V' : 'L' : 'L' : cs'' -> FieldPointer i : parseFields cs''
             'V' : cs'' -> FieldPointer i : parseFields cs''
             _ -> FieldSigned i : parseFields cs'
         False ->
           case cs' of
             'U' : _ -> error "refused to parse negative unsigned value"
             'L' : 'L' : cs'' -> FieldSigned (negate i) : parseFields cs''
             'V' : _ -> error "refused to parse negative pointer value"
             _ -> FieldSigned (negate i) : parseFields cs'
    False ->
      let d = case reads ('-' : s) :: [(Double, String)] of
            [(d', "")] -> d'
            _ -> error "badly formatted floating point number in input"
      in
       case cs' of
         'F' : cs'' -> FieldFloating d : parseFields cs''
         _ -> FieldFloating d : parseFields cs'
  where
    isNumeric c' = isDigit c' || c' `elem` "-+.eE"
    isIntegral ('-' : cs') = all isDigit cs'
    isIntegral cs' = all isDigit cs'
parseFields ('"' : cs) =
  let (s, cs') = span (/= '"') cs in
  case cs' of
    '"' : cs'' -> FieldString s : parseFields cs''
    _ -> error "unclosed string"
parseFields _ = error "stray character in input"

instance Show Field where
  show (FieldString s) = show s
  show (FieldChar c) = show c
  show (FieldSigned i)
    | i >= (-2147483648) && i <= 2147483647 = show i
    | otherwise = show i ++ "LL"
  show (FieldUnsigned u)
    | u >= 0 && u <= 4294967295 = show u ++ "U"
    | u >= 0 = show u ++ "ULL"
    | otherwise = error "refused to show signed unsigned value"
  show (FieldPointer u)
    | u >= 0 && u <= 4294967295 = "(void *)" ++ show u ++ "U"
    | u >= 0 = "(void *)" ++ show u ++ "ULL"
    | otherwise = error "refused to show signed pointer value"
  show (FieldFloating d) = show d
  show (FieldAntiTest) = "0"

genCase :: String -> IO ()
genCase testcase =
  case parseFields testcase of
    serial : FieldAntiTest : _ ->
      printf "    /* %s: anti-test */\n" (show serial)
    serial : result : format : args -> do
      _ <- printf "    test(%s, %s, %s" 
             (show serial) (show result) (show format)
      mapM_ (printf ", %s" . show) args
      printf ");\n"
    _ -> 
      error $ printf "bad parse for: %s" testcase

main :: IO ()
main = do
  contents <- getContents
  mapM_ genCase $ filter (\s -> nonblank s && noncomment s) $ lines contents
  where
    nonblank s =
      case find (/= ' ') s of
        Nothing -> False
        _ -> True
    noncomment [] = True
    noncomment ('#' : _) = False
    noncomment _ = True
