// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Identity {
    string name;
    uint32 age;

    constructor() {
        name="Rahul";
        age=18;
    }

    function getName() public view returns(string memory) {
        return name;
    }

    function getAge() public view returns(uint32) {
        return age;
    }
}
