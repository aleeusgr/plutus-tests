{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TemplateHaskell #-}

module MyFirstPlutusScript where

import Plutus.V1.Ledger.Api (BuiltinData, Validator, mkValidatorScript)
import PlutusTx (compile)

{-# INLINEABLE myValidator #-}
myValidator :: BuiltinData -> BuiltinData -> BuiltinData -> ()
myValidator _ _ _ = ()

validator :: Validator
validator = mkValidatorScript $$(compile [||myValidator||])