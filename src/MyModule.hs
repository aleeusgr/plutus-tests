module MyModule where

import Cardano.Node.Emulator.Params (pNetworkId)
import Control.Monad (forever, void)
import Control.Monad.Freer.Extras.Log (LogLevel (Debug, Info))
import Data.Aeson (FromJSON, ToJSON)
import Data.Default (def)
import Data.Text qualified as T
import Data.Text qualified as Text
import GHC.Generics (Generic)
import Ledger (Ada, CardanoAddress, PaymentPubKeyHash (unPaymentPubKeyHash), toPlutusAddress)
import Ledger.Ada qualified as Ada
import Ledger.Constraints qualified as Constraints
import Ledger.Typed.Scripts qualified as Scripts
import Plutus.Contract (Contract, Endpoint, Promise, endpoint, getParams, logInfo, selectList, submitTxConstraints,
                        submitTxConstraintsSpending, type (.\/), utxosAt)
import Plutus.Contract.Test (w1, w2)
import Plutus.Trace.Emulator qualified as Trace
import Plutus.V1.Ledger.Api (Address, ScriptContext (ScriptContext, scriptContextTxInfo), TxInfo (txInfoOutputs),
                             TxOut (TxOut, txOutAddress, txOutValue), Value)
import PlutusTx qualified
import PlutusTx.Prelude (Bool, Maybe (Just, Nothing), Semigroup ((<>)), mapMaybe, mconcat, ($), (&&), (-), (.), (==),
                         (>=))
import Prelude (IO, (<$>), (>>))
import Prelude qualified as Haskell
import Schema (ToSchema)
import Wallet.Emulator.Stream (filterLogLevel)
import Wallet.Emulator.Wallet (Wallet, mockWalletAddress)
