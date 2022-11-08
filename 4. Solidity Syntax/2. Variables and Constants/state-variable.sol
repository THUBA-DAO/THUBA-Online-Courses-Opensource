pragma solidity ^0.8.10;
// THUBA DAO版权所有，盗用必究
contract Storage {
    // 两个状态变量
    string public text = "Hello World!";
    uint public num = 100;

    function doStuff() public {
        text = "Good morning!";
        num = 200;
    }
}