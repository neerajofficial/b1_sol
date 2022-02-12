// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Demo {
    //  Storage
    //      Holds state variables.
    //      Persistent
    //      Cost gas
    //      Like a computer HDD

    //  Memory 
    //      Holds local variables defined inside functions if they are reference types.
    //      Not persistent
    //      No gas
    //      Like a computer RAM

    //  -------------------------------------

    string[] public students = ['Ravi', 'Rita', 'Aman'];

    function mem() public view {
        string[] memory s1 = students;
        s1[0] = 'Akash'; // no change in students because memory have a copy of students
    }

    function sto() public {
        string[] storage s1 = students;
        s1[0]='Amit'; // will change in students because storage have a reference to same students address
    }

    
}
