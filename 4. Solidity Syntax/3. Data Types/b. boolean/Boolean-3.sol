// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract BooleanComparisonOperators{
    // Declaring two variables - num1 and num2
    uint16 public num1 = 99;
    uint16 public num2 = 1;
 
    // Initializing equal variable with bool equal result
    bool public equal = num1 == num2;
 
    // Initializing notequal variable with bool not equal result
    bool public notequal = num1 != num2;
    
    // Initializing greaterthan variable with bool greater than result
    bool public greaterthan = num1 > num2;
 
    // Initializing lessthan variable with bool less than result
    bool public lessthan = num1 < num2;
 
    // Initializing greaterthanequal variable with bool greater than equal to result
    bool public greaterthanequal = num1 >= num2;
 
    // Initializing lesserthanequal variable bool less than equal to result
    bool public lesserthanequal = num1 <= num2;
}