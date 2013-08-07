{-# LANGUAGE CPP #-}
-- Copyright © 2013 Bart Massey
-- This program is licensed under the GPL version 2 or later.
-- Please see the file COPYING in this distribution for
-- license terms.

import Control.Exception
import Control.Monad
import Data.Int
import Data.IORef
import Data.Word
import System.Exit
import Text.Printf

main :: IO ()
main = do
  result <- newIORef True
  let handler :: ErrorCall -> IO (Either String String)
      handler msg = do
        writeIORef result False
        return $ Left $ show msg
  let checkResult :: Int -> String -> Either String String -> IO ()
      checkResult serial _ (Left msg) =
        printf "test %d excepted: %s\n" serial msg
      checkResult serial expected (Right got) = do
        when (expected /= got)
          (do
              writeIORef result False
              printf "test %d failed: expected \"%s\" got \"%s\"\n"
                serial expected got)
        return ()
#include "testcases.hs"
  r <- readIORef result
  when (not r) exitFailure
