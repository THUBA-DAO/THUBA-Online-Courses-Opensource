// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Array {  
  
    // Declare fixed size array
    int[5] array1 = [int(50), -63, 77, -28, 90]; 
    // Declare dynamic array
    uint[] array2;    
      
    // Define function to add values to an array 
    function array_example() public returns (int[5] memory, uint[] memory){  
        // Assign values to dynamic array
        array2 = [uint(10), 20, 30, 40, 50, 60];
                
        return (array1, array2);  
    }
}