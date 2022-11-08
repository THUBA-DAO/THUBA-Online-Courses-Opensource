// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Function {
    // 函数返回的结果中可以包含多项
    function returnMany()
        public
        pure
        returns (
            uint,
            bool,
            uint
        )
    {
        return (1, true, 2);
    }
}