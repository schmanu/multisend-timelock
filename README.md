# Multisend transaction timelock

## How does the contract work?

The Timelock smart contract is a very simple contract with just one function which receives a timestamp and checks if the block timestamp is bigger than the given time.

This function call can be added to i.e. (Gnosis) Safe multisend transactions in order to achieve a timelocked transaction which is only executable after a timestamp has passed.

Using this contract it is possible to fully sign transactions but avoiding the execution until a given date.

## Usecases

There are multiple use cases for fully signed but not executable transactions.

- Payrolls
- Automated contract calls via i.e. Gelato which should be executed at a specific date
- Cancellation of token vestings (i.e. for former employees)
