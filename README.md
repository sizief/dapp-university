## General points
- 1000,000,000,000,000,000 wei = 1 eth
- Gwei is 1000,000,000 wei and we use it for gas price. For example the current gas price is 50Gwei.
The transaction fee is gas_price * gas_needed. The transaction can be rejected (and not refunded) if the miner spent all gas and still can not complete the opertion. 
- In general, writing data is called a transaction whereas reading data is called a call.
- Return type is NB. Use toNumber() or toString()

## Links
- [Truffle console](https://www.trufflesuite.com/docs/truffle/getting-started/interacting-with-your-contracts)
- [Building Dapp](https://docs.openzeppelin.com/learn/building-a-dapp#starter-kit)
- [wrting smart contract](https://docs.openzeppelin.com/learn/developing-smart-contract)
## Ethereum node
- run geth: `geth --syncmode light --rpc` light is like prune mode in Bitcoin.
- run testnet: `geth --syncmode light --testnet --rpc --allow-insecure-unlock console 2>> geth.log`
- `personal.newAccount()`, `eth.getBalance(eth.accounts[0])`, `personal.unlockAccount(eth.accounts[0], "mypassword", 24*3600)`
rpc commands: https://eth.wiki/json-rpc/API
send rpc command: ```curl -X POST -H "Content-Type: application/json" --data \
  '{"jsonrpc":"2.0","method":"eth_gasPrice","params":[],"id":1}' \
  http://localhost:8545```

## Solidity
Intsall [solc (compiler)](https://solidity.readthedocs.io/en/v0.6.10/installing-solidity.html#binary-packages)
Then `solc --bin -o ./tmp/solcoutput Faucet.sol`

## ERC721
- https://studio.ethereum.org/5f00ab9e26b473001235a0f8?openFile=README.md

## Truffle
- `truffle init`
- `truffle create contract SOMETHING`
- `truffle compile`
- Create migration file, run Ganache and then `truffle migrate --reset`
- `truffle console` to interact with the deployed contract
- Inside console: `var instance = await ContractName.deployed()` or `var instance = await ContractName.new()` or `var instance = ContractName.at(address)`
- And then `instance.address` or `var res = await instance.method()` because call is sync, and transaction is async
- run `migrate` inside the cosole to compile and migrate
- run `truffle console --network ropsten` and define `ropsten` network definition in truffle-config.js
## Questions
- `public` prop means anyone can read/write?
- what is constructors do?
- what is memory keyword
