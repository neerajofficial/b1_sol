// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Demo {
    //  struct 
    // can be made inside contract and outside of contract to be used by multiple contracts
    //
    // definition
    struct Student {
        uint roll;
        string name;
    }

    // declaration
    Student public s1;

    constructor(uint _roll, string memory _name) {
        s1.roll = _roll;
        s1.name = _name;
    }

    function updateStudent(uint _roll, string memory _name) public {
        Student memory new_student = Student({
            roll: _roll,
            name: _name
        });
        
        s1 = new_student;
    }
}
