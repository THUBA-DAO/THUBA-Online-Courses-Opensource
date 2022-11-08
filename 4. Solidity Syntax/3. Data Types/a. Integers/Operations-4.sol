pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Operations {
    uint8 num1 = 0x3c;              // 二进制：0011 1100
    uint8 public ls1 = num1 >> 2;   // 0011 1100 >> 2 = 0000 1111 = 15
    uint8 public rs1 = num1 << 2;   // 0011 1100 << 2 = 1111 0000 = 240


    uint8 num2 = 0xff;              // 二进制：1111 1111
    uint8 public ls2 = num2 << 3;   // 1111 1111 << 3 = 1111 1000 = 248
    uint8 public rs2 = num2 >> 3;   // 1111 1111 >> 3 = 0001 1111 = 31
}