// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
// after 255 it will restart from 0 in ^0.5.0 version
// but it is resolved in latest version as it gives transaction falied error

contract Local {
    uint8 public money=255;

    function setter() public {
        money=money+1;
    }
}
