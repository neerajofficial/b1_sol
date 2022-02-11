// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Local {
   //   1 byte = 8 bits
   //   1 hexadecimal digit = 4 bits
   //   Everything that will be stored in the byte array will be in the form of hexadecimal digits.
    
   //   Fixed-size Byte Array
   bytes3 public b3; // 3 bytes array   //  0x000000
   bytes2 public b2; // 2 bytes array   //  0x0000

    function setter() public {
        b3='abc';   //  0x616263
        b2='ab';    //  0x6162
        // b2='a';     //  0x6100  padding of 0 added to if space is not occupied 
        // b3[0] = 'd'; // bytes array can't modify / immutable
    }

    //  Dynamic-Size byte array
    //  bytes which is shorthand for bytes[]
    bytes public b1="abc";  // 0x616263

    function pushElement() public {
        //  b1.push('de');   // not correct
        b1.push('d');   // 0x61626364
        b1.push('e');   // 0x6162636465
    }

    function getElement(uint i) public view returns(bytes1) {
        return b1[i];
    }
    function getLength() public view returns(uint) {
        return b1.length;
    }
}
