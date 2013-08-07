{-# LANGUAGE CPP #-}
-- Copyright © 2013 Bart Massey
-- This program is licensed under the GPL version 2 or later.
-- Please see the file COPYING in this distribution for
-- license terms.

import Control.Monad
import Data.Int
import Data.IORef
import Data.Word
import System.Exit
import Text.Printf

main :: IO ()
main = do
  result <- newIORef True
  let checkResult :: Int -> String -> String -> IO () 
      checkResult serial expected got = do
        when (expected /= got) 
          (printf "test %d failed: expected \"%s\" got \"%s\""
            serial expected got)
        r <- readIORef result
        when r (writeIORef result $ expected == got)
#include "testcases.hs"
  r <- readIORef result
  when (not r) exitFailure
