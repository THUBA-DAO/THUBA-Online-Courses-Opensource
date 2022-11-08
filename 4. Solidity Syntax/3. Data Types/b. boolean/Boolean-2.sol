// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract BooleanLogicalOperators{
     // Logical operators
     function Logic(bool bool1, bool bool2) public view returns(
       bool, bool, bool){
        
       // Logical && operator 
       bool and = bool1&&bool2;
        
       // Logical || operator 
       bool or = bool1||bool2;
        
       // Logical ! operator
       bool not = !bool1;
       return (and, or, not);
 }
}