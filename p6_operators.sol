// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Local {
    // int   - signed type            
    //   int8 to int256
    //   int alias to int256
    //   by default as 0

    // uint  -  unsigned type
    //   uint8 to uint256
    //   uint alias to uint256
    //   by default as 0

    // overflow get detected at compile time.
    //  -----
    //  Range
    //  -----
    //  int8: -128 to +127
    //  int16: -32768 to +32767
    //  -2^(n-1) to 2^(n-1)-1
    //
    //  uint8: 0 to +255
    //  uint16: 0 to +65535
    //  0 to 2^(n)-1
    //

    // int8 public count=128;   // error in range
    // int8 public count=127;      // in range

    // uint8 public count=258;   // error in range
    // uint8 public count=-256;  // error signed value
    // uint8 public count=255;     // in range


    //  -----------------------------------------
    //  operators
    /**
    *   Booleans    -   true, false
    *       ! (logical negation)
    *       && (logical conjuction, "and")
    *       || (logical disjuction, "or")
    *       == (equality)  
    *       != (inequality)
    *
    *   
    *   Integers    -   int / uint
    *       Comparisons: <=, <, ==, !=, >=, > (evaluate to bool)
    *       Bit operators: &, |, ^ (bitwise exclusive or), ~ (bitwise negation)
    *       Shift operators: << (left shift), >> (right shift)
    *       Arithmetic operators: +, -, unary -, unary +, *, /, % (modulo), **(exponentiation)
    *   
    *   Address -   address: holds a 20byte value (size of ethereum address)   
    *               address payable: same as address but have additional members transfer and send
    *   Members of Addresses -  balance and transfer
    *                           call, delegatecall and staticcall
    */

}
