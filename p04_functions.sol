// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Local {
    // uint age=10;
    
    // function getter() public view returns(uint) {
    //     return age;
    // }

    uint public age=10;

    function setter(uint _age) public returns(uint) {
        age= _age;
        return age;
    }
}
