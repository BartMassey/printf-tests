-- Copyright © 2013 Bart Massey
-- This program is licensed under the GPL version 2 or later.
-- Please see the file COPYING in this distribution for
-- license terms.

import Control.Monad
import Data.Int
import Data.Word
import System.IO
import Text.Printf

data Field = FieldString String | FieldChar Char | 
             FieldSigned Integer | FieldUnsigned Integer |
             FieldPointer Integer

instance Show Field where
  show (FieldString s) = show s
  show (FieldChar c) = show c
  show (FieldSigned i) | i >= i <= 

genCase :: String -> IO ()
genCase testcase =
  let (serial : result : format : args) = parseFields testcase in
  printf "    test(%d, %s, %s" (show serial) (show result) (show format)
  mapM_ (printf ", %s" . show) args
  printf ");\n"

main :: IO ()
main = do
  contents <- getContents
  mapM_ genCase $ filter (nonblank && noncomment) $ unlines contents
  where
    nonblank s =
      case find (\= ' ') s of
        Nothing -> True
        _ -> False
    noncomment [] = True
    noncomment ('#' : _) = False
    noncomment _ = True
