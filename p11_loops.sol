// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Local {
    // Loops
    // while
    // for 
    // do-while

    uint[3] public arr;
    uint count = 0;
    
    // function whileloop() public {
    //     while(count < arr.length) {
    //         arr[count] = count;
    //         count++;
    //     }
    // }

    // function forloop() public {
    //     for(uint i=count; i<arr.length; i++) {
    //         arr[count] = count;
    //         count++;
    //     }
    // }

    function dowhileloop() public {
        do{
            arr[count] = count;
            count++;
        } while(count < arr.length);
    }

}
