pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Integers {
    // 256 bit
    int public num1 = 2**255 - 1;   // 最小值 -2**255
    uint public num2 = 2**256 - 1;  // 最小值 0

     // 8 bit
    int8 public num3 = 2**7 - 1;    // 最小值 -2**7
    uint8 public num4 = 2**8 - 1;   // 最小值 0
    
    // 16 bit
    int16 public num5 = 2**15 - 1;  // 最小值 -2**15
    uint16 public num6 = 2**16 - 1; // 最小值 0

    // 32 bit
    int32 public num7 = 2**31 - 1;  // 最小值 -2**31
    uint32 public num8 = 2**32 - 1; // 最小值 0
}