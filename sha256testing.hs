#!/usr/bin/env stack
-- stack --install-ghc runghc --package cryptohash

{-# LANGUAGE OverloadedStrings #-}

import Crypto.Hash
import qualified Data.ByteString.Char8 as B
import System.Environment (getArgs)

main = do
  args <- getArgs
  let dgt = hash (B.pack . concat $ args) :: Digest SHA256
  putStrLn $ show dgt
