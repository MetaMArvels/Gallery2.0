// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Transactions {
   uint256 TransactionCount;

   event Transfer(address from, address recevier, uint amount, string message, uint256 timestamp, string keyword);

   struct TransferStruct {
      address sender;
      address receiver;
      uint amount;
      string message;
      uint256 timestamp;
      string keyword;
   } 
   TransferStruct[] transactions;

   function addToLockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
      TransactionCount += 1;
      transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
      emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
   }

   function getALLTransactions() public view returns (TransferStruct[] memory) {
      return transactions; 
   }
   
   function getTransactionCount() public view returns (uint256) {
      return TransactionCount;
   }
}
