// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Local {
    // function store() pure public returns(uint256) {
    //     uint256 age=19;
    //     return age;
    // }

    function store() pure public returns(uint256) {
        string memory name="rahul";
        uint256 age=19;
        return age;
    }
}
