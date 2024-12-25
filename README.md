# Silent Transaction Reversal in Dapp Ownership Transfer

This repository demonstrates a common but easily overlooked bug in Solidity smart contracts: the silent failure of a transaction due to the improper use of the `require` statement. The example showcases an ownership transfer function that reverts the transaction without emitting an event if the caller is not the owner.  This lack of feedback makes debugging challenging.

The `bug.sol` file contains the erroneous code, while `bugSolution.sol` provides a corrected version that emits an event in case of failure. This allows developers to easily identify and handle transaction failures, improving the overall user experience and simplifying debugging.