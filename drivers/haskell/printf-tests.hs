{-# LANGUAGE CPP #-}
-- Copyright © 2013 Bart Massey
-- This program is licensed under the GPL version 2 or later.
-- Please see the file COPYING in this distribution for
-- license terms.

import Prelude
import Control.Exception as E
import Control.Monad
import Data.Int
import Data.IORef
import Data.Word
import System.Environment
import System.Exit
import System.IO (hFlush, stdout)
#ifdef EXTENSIBLE
import Text.Printf.Extensible
#else
import Text.Printf
#endif

main :: IO ()
main = do
  args <- getArgs
  let verbose = case args of
        ["-v"] -> True
        [] -> False
        _ -> error "usage: printf-tests [-v]"
  result <- newIORef True
  let handler :: ErrorCall -> IO (Either String String)
      handler msg = do
        writeIORef result False
        return $ Left $ show msg
  let checkResult :: Int -> String -> Either String String -> IO ()
      checkResult serial _ (Left msg) = do
        printf "test %d excepted: %s\n" serial msg :: IO ()
        hFlush stdout
      checkResult serial expected (Right got) =
        case expected == got of
          False -> do
            writeIORef result False
            printf "test %d failed: expected \"%s\" got \"%s\"\n"
              serial expected got :: IO ()
            hFlush stdout
          True -> do
            when verbose
              (printf "test %d succeeded\n" serial)
            hFlush stdout
#include "testcases.hs"
  r <- readIORef result
  when (not r) exitFailure
