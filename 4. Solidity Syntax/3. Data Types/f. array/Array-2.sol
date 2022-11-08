// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Array2 {  
  
    // Declare fixed size array
    int[5] array1 = [int(50), -63, 77, -28, 90]; 
    // Declare dynamic array
    uint[] array2;    

    // Define function to add values to an array 
    function array_assign_values() public returns (uint[] memory){  
        // Assign values to dynamic array
        array2 = [uint(10), 20, 30, 40, 50, 60];
                
        return (array2);  
    }

    // Array Operations - Access Array Element
    function array_get_first_element_value() public payable returns (uint){  
        uint first_value = array2[0];
        return first_value;  
    }

    // Array Operations - Get Length of Array
    function array_get_length() public returns(uint) {  
        uint x = array2.length;
        return x; 
    } 

    // Array Operations - Push New Element Into Array
    function array_push() public returns(uint[] memory){  
        array2.push(70);  
        array2.push(80);  
        array2.push(90);
        array2.push(100);
    
        return array2;  
    }  

    // Array Operations - Pop (aka Remove) Last Element From Array
    function array_pop() public returns(uint[] memory){  
        array2.pop(); 
        return array2;  
    }  
}