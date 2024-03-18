// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//by Gowtham k
contract VotingSystem {

string[5] public candidates;

mapping(string => uint256) private candidateVotes;

event VoteCast(string candidate, uint256 newVoteCount);

constructor() {
candidates[0] = "steve";
candidates[1] = "nat";
candidates[2] = "joshua";
candidates[3] = "gowtham";
candidates[4] = "jan";
}

function vote(uint8 candidateIndex) public {
require(candidateIndex < 5, "Invalid candidate index");
string memory selectedCandidate = candidates[candidateIndex];
candidateVotes[selectedCandidate]++;
emit VoteCast(selectedCandidate, candidateVotes[selectedCandidate]);
}

function getVotes(string memory candidate) public view returns (uint256) {
return candidateVotes[candidate];
}

function getCandidateNames() public view returns (string[5] memory) {
return candidates;
}
}