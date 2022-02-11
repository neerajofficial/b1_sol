// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Demo {
    enum user{allowed, not_allowed, wait}
    // enum user{0, 1, 2}
    // can create outside and inside of contract

    user public u1 = user.allowed;
    user public u2 = user.wait;
    user public u3 = user.not_allowed;

    uint public lottery = 1000;

    function owner() public {
        if (u1 == user.allowed) {
            lottery = 0;
        }
    }

    function changeowner() public {
        u1 = user.not_allowed;
    }
}
