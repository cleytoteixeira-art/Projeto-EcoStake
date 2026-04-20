// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./EcoToken.sol";

contract EcoDAO {
    EcoToken public token;

    struct Proposal {
        string description;
        uint256 voteCount;
        bool executed;
    }

    Proposal[] public proposals;

    constructor(address _token) {
        token = EcoToken(_token);
    }

    function createProposal(string memory _description) external {
        proposals.push(Proposal(_description, 0, false));
    }
}