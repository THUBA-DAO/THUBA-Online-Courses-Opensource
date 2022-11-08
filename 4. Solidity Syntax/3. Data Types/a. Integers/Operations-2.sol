pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Operations {
    int num1 = 100;
    int num2 = 30;

    int public mod1 = num1 % num2;   // 10

    int num3 = -100;
    int public mod2 = num3 % num2;  // -10

    int num4 = -30;
    int public mod3 = num3 % num4;  // -10
}