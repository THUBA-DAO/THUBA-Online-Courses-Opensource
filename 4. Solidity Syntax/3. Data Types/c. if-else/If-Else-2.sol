// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Require {
    function function1(uint16 num1) public pure {
        require (num1 <= 100, "Value less than 100!");
        require (num1 > 100, "Value larger than 100!");
    }
}