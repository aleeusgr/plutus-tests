module MyModule where

import qualified Plutus.Script.Utils.V2.Typed.Scripts as PSU.V2
--
--    Could not find module ‘Plutus.Script.Utils.V2.Typed.Scripts’
--    Perhaps you meant
--      Plutus.Script.Utils.V1.Typed.Scripts (from plutus-script-utils-0.1.0.0)
--      Plutus.Script.Utils.V1.Scripts (from plutus-script-utils-0.1.0.0)
--      Plutus.Script.Utils.V1.Typed.TypeUtils (from plutus-script-utils-0.1.0.0)
--    Use -v (or `:set -v` in ghci) to see a list of the files searched for.

hello :: String
hello = "hello"

main :: IO ()
main = putStrLn hello
