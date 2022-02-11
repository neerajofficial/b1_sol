// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Local {
    //  boolean 
    bool public value;  // false by default
    //  !, &&, ||, ==, != operations can by used on bool
    //  -------------
    function check(int a) public returns(bool) {
        if (a > 0) {
            value = true;
        } else {
            value = false;
        }
        return value;
    }
}
