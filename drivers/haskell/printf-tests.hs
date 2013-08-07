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
  let handler :: Int -> ErrorCall -> IO (Maybe String)
      handler serial _ = do
        writeIORef result False
        _ <- printf "test %d exceptioned\n" serial
        return Nothing
  let checkResult :: Int -> String -> Maybe String -> IO ()
      checkResult _ _ Nothing = return ()
      checkResult serial expected (Just got) = do
        _ <- printf "test %d\n" serial
        when (expected /= got) 
          (do
              writeIORef result False
              printf "test %d failed: expected \"%s\" got \"%s\"\n"
                serial expected got)
#include "testcases.hs"
  r <- readIORef result
  when (not r) exitFailure
