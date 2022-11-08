// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Enums {
    // Create an enumerator
    enum week_days
    {
      Monday,
      Tuesday,
      Wednesday,
      Thursday,
      Friday,
      Saturday,
      Sunday
     } 
 
    // Declare variables of type enumerator
    week_days week;   
     
    week_days choice;
 
    // Set a default value
    week_days constant default_value
      = week_days.Sunday;
     
    // Define a function to set value of choice
    function set_value() public {
      choice = week_days.Thursday;
    }
 
    // Define a function to return value of choice
    function get_choice(
    ) public view returns (week_days) {
      return choice;
    }
       
    // Define function to return default value
    function getdefaultvalue(
    ) public pure returns(week_days) { 
        return default_value; 
    } 
}