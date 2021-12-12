// SPDX-License-Identifier: MIT
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
pragma solidity 0.8.7;

contract FundMe{

    AggregatorV3Interface priceFeed = AggregatorV3Interface("") 
    function convertWeiEther(uint256 amount) public view returns (uint256) {

        (,int256 data,,) = latestRoundData();
        return data;
    }

    mapping(address =>uint256) public transactions;

    function fundMe() public payable{
        transactions[msg.sender] = msg.value;
    }

    function sayHello(address sender) public view returns( uint256 ) {
        return transactions[sender];
    }
}