pragma solidity ^0.8.10;
// THUBA DAO版权所有，盗用必究
contract Global {
    uint public timestamp = block.timestamp; // 获取当前时间
    address public sender = msg.sender; // 调用函数用户的地址
}