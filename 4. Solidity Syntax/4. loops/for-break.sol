// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Loop {
    function loop(uint num1) public pure returns (uint) {
        // for loop
        for (uint i = num1; i < 10; i++) {
            if (i == 3) {
                // 使用break直接停止循环
                break;
            }
            num1++;
        }
        return num1;
    }
}