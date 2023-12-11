// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Interface contracts are similar to abstract but they:
// 1. cannot inherit from other smart contracts
// 2. they can only inherit from other interfaces
// 3. they cannot declare a constructor
// 4. they cannot declare state variables
// 5. all declared functions have to be external

interface IFaucet {

    function addFunds() external payable;
    function withdraw(uint withdrawAmount) external;
}