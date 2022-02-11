// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Demo {
   //   Mapping
   //   concept of keys and values
   //   mapping(key => value)
   //   The key cannot be types mapping, dynamic array, enum and struct.
   //   The values can be of any type.
   //   Mappings are always stored in storage irrespective of whether they are declared in contract storage or not.
    
    //  _roll           _name
    //  0       ---->   Ravi
    //  5       ---->   Akash
    //  100     ---->   Rita

    //  ---------------------------------
    // mapping(uint=>string) public roll_no;

    // function setter(uint keys, string memory value) public {
    //     roll_no[keys] = value; 
    //     //  2 --> Amit
    // }

    //  ---------------------------------
    struct Student {
        string name;
        uint class;
    }

    mapping(uint=>Student) public data;

    function setter(uint _roll, uint _class, string memory _name) public {
       data[_roll] = Student({
           class: _class,
           name: _name
       });

        //  _roll           _name   _class
        //  0       ---->   Ravi    9
        //  5       ---->   Akash   10
        //  100     ---->   Rita    12
    }


}
