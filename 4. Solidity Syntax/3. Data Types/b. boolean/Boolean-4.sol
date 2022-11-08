// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract BooleanBitwiseOperators{
    // Declaring two variables - num1 and num2
    uint16 public num1 = 99;
    uint16 public num2 = 1;
 
    // Initializing and variable to '&' value
    uint16 public and = num1 & num2;
 
    // Initializing or variable to '|' value
    uint16 public or = num1 | num2;
 
    // Initializing xor variable to '^' value
    uint16 public xor = num1 ^ num2;
 
    // Initializing leftshift variable to '<<' value
    uint16 public leftshift = num1 << num2;
 
    // Initializing rightshift variable to '>>' value
    uint16 public rightshift = num1 >> num2;
   
    // Initializing not variable to '~' value
    uint16 public not = ~num1 ;
}