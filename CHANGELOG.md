Jan 9
## Reading [Tutorial](https://plutus-apps.readthedocs.io/en/latest/plutus/tutorials/basic-apps.html)
Where does this code go? 
I can put it in `/src`, or I can put it into `./examples/src/`

NOTE: plutus starter needs updating to V2, does not it? 

I have three pieces of code, which do three different things; 
-[ ] PAB;
-[ ] the example in the examples folder.
-[ ] Third is the tutorial, basic-apps;

How do the first two connect and where does the third fit?

PAB:
>environment to help developers create and test DApps
basic-apps:
>In this tutorial you are going to write a Plutus app

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

