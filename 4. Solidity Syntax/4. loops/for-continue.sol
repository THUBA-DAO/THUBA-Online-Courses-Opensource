// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Loop {
    function loop(uint num1) public pure returns (uint) {
        // for loop
        for (uint i = num1; i < 10; i++) {
            if (i == 3) {
                // 使用continue使得循环直接进入下一轮
                continue;
            }
            num1++;
        }
        return num1;
    }
}