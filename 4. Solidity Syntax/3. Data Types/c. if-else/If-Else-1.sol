// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract IfElse {
    function function1(uint num1) public pure returns (uint) {
        if (num1 < 50) {
            return 2;
        } else {
            return 1;
        }
    }

    function function2(uint num2) public pure returns (uint) {
        // Simplified way to write if / else statement
        return num2 < 50 ? 2 : 1;
    }
}