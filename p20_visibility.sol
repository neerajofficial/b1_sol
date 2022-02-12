// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Demo {
    //  Visibility
    //  ------------------------------------------------------------------------------
    //  Public - can be accessible from outside world and inside contract
    //  Private - can be accessible from inside contract
    //  Internal - only for contract
    //  External - only for outside world
    //  ------------------------------------------------------------------------------
    //  ------------------------------------------------------------------------------
    //  Property                    -   Public      Private     Internal    External
    //  ------------------------------------------------------------------------------
    //  Visibility                  -   Outside     x           x           Outside
    //  Can call within contract    -   Within      Within      Within      x
    //  Inheritance                 -   Derived     x           Derived     Derived
    //  Non Inherited contract      -   Other       x           x           Other
    //  ------------------------------------------------------------------------------

    function f1() public pure returns(uint) {
        return 1;
    }

    function f2() private pure returns(uint) {
        return 2;
    }

    function f3() internal pure returns(uint) {
        // uint x = f4();   // not allowed
        // uint x = f2(); // work
        return 3;
    }

    function f4() external pure returns(uint) {
        return 4;
    }
}

// contract Demo2 is Demo {
    // uint public bx = f1(); // public can be inherit and can be called from outside
    // uint public bx = f2(); // private can't be inherit and can't be called from outside
    // uint public bx = f3(); // internal can be inherit but can't be called from outside
    // uint public bx = f4(); // external can't be inherit but can be called from outside
// }

contract Demo3 {
    Demo obj = new Demo();
    // uint public cx = obj.f1(); // can be called
    // uint public cx = obj.f2(); // can't be called
    // uint public cx = obj.f3(); // can't be called
    // uint public cx = obj.f4(); // can be called
}
