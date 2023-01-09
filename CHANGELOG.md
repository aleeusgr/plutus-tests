Jan 9

PAB: serve and interact with contracts over a web API;

`curl -s http://localhost:9080/api/contract/definitions | jq`

You should receive a list of contracts and the endpoints that can be called on them, and the arguments required for those endpoints.

PAB is an example of a plutus-app; T | F?

I wonder, I can explore SIDAN vs PAB; if I can integrate SIDAN inte plutus-starter, I will get CI for free.
This aligns with the process of developing secure dApps;

A task idea:
- copy SIDAN code to plutus-starter
- adjust .cabal
- make it build

Jan 7

`cabal run` starts PAB.
`cabal test` runs some tests. 

PAB does not have any libraries?

