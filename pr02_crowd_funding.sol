// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/*
*   Crow Funding Contract
*   -   Manager will create advertisment for funding.
*   -   There is target for total amount required.
*   -   Deadline is time available to fulfill the target.
*   -   Minimum Contribution per contributor.
*   -   Manager will ask for 50% contributors permission to take amount out of the smart contract.
*   -   If deadline hit and target not reached then contributors can get amount back.
*   -   Contributor can't get amount back before deadline.
*/

contract CrowdFunding {
    mapping (address=>uint) public contributors;
    address public manager;
    uint public minContribution;
    uint public deadline;
    uint public target;
    uint public raisedAmount;
    uint public totalContributors;

    struct Request {
        string description;
        address payable recipient;
        uint value;
        bool completed;
        uint totalVoters;
        mapping(address=>bool) voters;
    }
    mapping(uint=>Request) public requests;
    uint public numRequests;

    constructor(uint _target, uint _deadline, uint _minContribution) {
        target = _target;
        deadline = block.timestamp + _deadline; // 1h -> 3600sec
        minContribution = _minContribution;
        manager = msg.sender;
    }

    function contribute() public payable {
        require(block.timestamp < deadline, "Deadline has passed");
        require(msg.value >= minContribution, "Minimum contribution is not met");
        
        if (contributors[msg.sender] == 0) {
            totalContributors++;
        }
        contributors[msg.sender] += msg.value;
        raisedAmount += msg.value;
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function refund() public {
        require(block.timestamp > deadline && raisedAmount < target, "You are not eligible to get refund.");
        require(contributors[msg.sender]>0, "There is no contribution.");
        address payable user = payable(msg.sender);
        user.transfer(contributors[msg.sender]);
        contributors[msg.sender] = 0;
    }
}
