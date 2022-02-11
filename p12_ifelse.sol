// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Local {
    // if-else
    function check(int a) public pure returns(string memory) {
        string memory value;
        if (a > 0) {
            value = "Positive number";
        } else if (a < 0) {
            value = "Negative number";
        } else {
            value = "Number is zero";
        }
        return value;
    }
}
