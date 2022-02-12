// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/*
*   Lottery Contract
*   -   Participant must have a wallet
*   -   A participant can transfer ether more than one time but the transferred ether must be 2 ether.
*   -   As the participant will transfer ether its address will be registered.
*   -   Manager will have full control over the lotter.
*   -   The contract will be reset once a round is completed.
*   -   0x298d29274c8904e1317894e1bcbca53872e6150f 
*/

contract Lottery {
    address public manager;
    address payable[] public participants;
    
    modifier restricted() {
        require(msg.sender == manager);
        _;
    }

    constructor() {
        manager = msg.sender;
    }

    receive() external payable {
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    }
    // receive() external payable {
    //     emit Received(msg.sender, msg.value);
    // }

    function getBalance() public view restricted returns(uint) {
        return address(this).balance;
    }

    function random() public view returns(uint) {
        // return uint256(keccak256(block.difficulty, now, players));
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }

    function selectWinner() public restricted {
        require(participants.length>=3);
        uint index = random() % participants.length;
        address payable winner = participants[index];
        winner.transfer(getBalance());
        participants = new address payable[](0);
    }
}
