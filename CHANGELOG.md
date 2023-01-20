Jan 20

The last several weeks were rather intense and the pain in the back is crazy, I even lost my sleep somehow.
What needs to be done?
This repo covers a good chunk of work to do: we have the green light.
Now to implement what it actually means.
Green ~ The following statement is true:
The contract in this repo is Level 1 certification ready. 
What does it mean? 

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

