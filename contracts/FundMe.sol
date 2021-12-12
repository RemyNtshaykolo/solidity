// SPDX-License-Identifier: MIT
import @chainlink/contracts/src/v0.6/interfaces/aggregatorv3/interface.sol;

pragma solidity 0.8.7;

contract FundMe{


    mapping(address =>uint256) public transactions;

    function fundMe() public payable{
        transactions[msg.sender] = msg.value;
    }

    function sayHello(address sender) public view returns( uint256 ) {
        return transactions[sender];
    }
}