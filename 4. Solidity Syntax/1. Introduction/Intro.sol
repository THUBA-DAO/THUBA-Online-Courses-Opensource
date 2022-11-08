pragma solidity ^0.8.10;
// THUBA DAO版权所有，盗用必究
contract Intro {
    string public hello = "Hello World!";   // 字符串
    uint public x = 100;                    // 不带符号整型
    int public y = -100;                    // 带符号整型

    /*
     * @param x 被加的数 
     * @return x + 10 的结果
     */
    function addTen(uint x) public view returns (uint) {
        return x + 10;
    }
}
// THUBA DAO版权所有，盗用必究