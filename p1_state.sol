// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract State {
    uint32 public age;
    uint32 public num;
    // uint32 public age=10;
    // constructor() {
    //     age=10;
    // }
    function setAge() public {
        age=10;
    }
}
