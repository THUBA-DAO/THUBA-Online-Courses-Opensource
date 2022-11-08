// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract cat{
    string name;
    function eat() public returns(string memory){
        return "cat eat fish";
    }
}

contract dog{
    string name;
    function eat() public returns(string memory){
        return "dog miss you";
    }
}

interface animalEat{
      function eat() external returns(string memory);
}

contract animal{
    function test(address _addr) public returns(string memory){
        animalEat generalEat = animalEat(_addr);
        return generalEat.eat();
    }
}