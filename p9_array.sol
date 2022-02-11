// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Local {
    // Fixed Size Array
    uint [4] public arr1=[10,20,30,40]; 

    // Dynamic Size Array
    uint[] public arr2; 

    function setter(uint index, uint value) public {
        arr1[index]=value;
    }

    function length() public view returns(uint) {
        return arr1.length;
    }

    function pushElement(uint item) public {
        arr2.push(item);
    }

    function popElement() public {
        arr2.pop();
    }

    function len() public view returns(uint) {
        return arr2.length;
    }
}
