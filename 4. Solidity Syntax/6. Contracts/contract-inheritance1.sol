// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
    function fooInternal() internal pure virtual returns (string memory) {
        return "AInternal";
    }
    function fooPrivate() private pure returns (string memory) {
        return "APrivate";
    }
}

// 使用is继承
contract B is A {
    function foo2() public pure virtual returns (string memory) {
        // 调用Internal权限的函数
        return fooInternal();
    }
}