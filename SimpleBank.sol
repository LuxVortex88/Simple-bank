// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint256) private balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }


    function withdraw(uint256 amount) public{
      require(balances[msg.sender] >= amount, "Insufficient funds");
      payable(msg.sender).transfer(amount);
      balances[msg.sender] -= amount;
    }
      
    
    
    function checkBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}         


