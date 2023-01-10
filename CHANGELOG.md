Jan 10

There is https://github.com/input-output-hk/plutus-starter/issues/56
How can I add V2 support?

I need a test, a working example of plutus-app using v2 scripts. 
I think there exists V2 version of 
https://gitlab.com/gimbalabs/plutus-pbl-summer-2022/plutus-always-succeeds

Therefore I should add plutus-always-succeds and see if it works.
its tag is specified to be `v2022-04-06`

Jan 9

## Reading README:
PAB: serve and interact with contracts over a web API;

`curl -s http://localhost:9080/api/contract/definitions | jq`

You should receive a list of contracts and the endpoints that can be called on them, and the arguments required for those endpoints.

PAB is an example of a plutus-app; T | F?

I wonder, I can explore SIDAN vs PAB; if I can integrate SIDAN inte plutus-starter, I will get CI for free.
This aligns with the process of developing secure dApps;

A task idea:
- copy SIDAN code to plutus-starter
- make it build
- .cabal

Validator script is the lock; plutus-apps is the only kind of key that can open such a lock;
PAB is the endpoint; it accepts web requests, processess them and sends them to blockchain: PAB -> cli -> cardano-node.

Jan 7

`cabal run` starts PAB.
`cabal test` runs some tests. 

PAB does not have any libraries?

