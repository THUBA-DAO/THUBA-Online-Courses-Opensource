// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
//THUBA DAO版权所有，盗用必究
contract Structs {
 
   // Declare a structure
   struct Book {
      string name;
      string author;
      uint id;
      bool available;
   }
 
   // Declare a structure object
   Book book1;

   // Define a function to set values for the fields for structure book1
   function set_book_detail() public {
      book1 = Book("Introducing Ethereum and Solidity",
                   "Chris Dannen",
                    1, true);
   }

   // Defining function to print book1 details
   function get_details(
   ) public view returns (string memory, string memory, uint, bool) {
      return (book1.name, book1.author, book1.id, book1.available);
   }
}