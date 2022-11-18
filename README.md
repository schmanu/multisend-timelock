[![Foundry][foundry-badge]][foundry]

[foundry]: https://getfoundry.sh/
[foundry-badge]: https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg

# Multisend transaction timelock

## How does the contract work?

The Timelock smart contract is a very simple contract with just one function which receives a timestamp and checks if the block timestamp is bigger than the given time.

This function call can be added to i.e. (Gnosis) Safe multisend transactions in order to achieve a timelocked transaction which is only executable after a timestamp has passed.

Using this contract it is possible to fully sign transactions while avoiding the execution until a given date.

## Where is the contract deployed to?

Currently the contract is deployed at these addresses

- Mainnet `0x2d96225942ada8e7f928b172c75df7b1c3baf343`
- Goerli `0x6e8c8403837e305a0312beba98b7001c117a69a7`

## Usecases

There are multiple use cases for fully signed but not executable transactions.

- Payrolls
- Automated contract calls via i.e. Gelato which should be executed at a specific date
- Cancellation of token vestings (i.e. for former employees)

## Proof of concept implementation

There is a MVP available here: https://poc-timelock-txs.web-core.pages.dev/

To create a time locked transaction you just have to create a transaction as usual using the Safe interface.
In the review step of tx creation you can click on "Signing the transaction with nonce" to open and edit the advanced options.
![Review modal](/img/review.png)

There is a new field to enter a time when the transaction should be executable. If you apply these changes the timelock will be batched into the multisend tx.
![Advanced params](/img/edit.png)

The queue tab of a Safe's transactions there is a new watch-icon for timelocked transactions which are not executable yet.
![Queue](/img/queue.png)
