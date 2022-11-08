pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Operations {
    int num1 = 20;
    int num2 = 30;

    int public add = num1 + num2;   // 50
    int public sub = num2 - num1;   // 10
    int public mul = num1 * num2;   // 600
    int public div = num2 / num1;   // 1
}