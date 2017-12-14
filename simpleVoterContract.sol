//From youtube tutorial with Siraj Rival on the basic voting contract on github
pragma solidity ^0.4.11;

contract Voting {

mapping (bytes32 ==> uint8) public votesRecieved		//will store the number of votes recieved
bytes32[] public candidateList;	//array of candidates (strings), stored as an array of 32 bytes 

function Voting(bytes32[] candidateNames) { // This is our constructor for the class
		candidateList = candidateNames;
}

function totalVotesFor(bytes32 candidate) return(uint) {
		
		return votesRecieved[candidate];
}

function votingForCandidate(bytes32 candidate) {

		if(validCandidate(candidate) == false) throw;
		votesRecieved[candidate] += 1
}

function validCandidate(bytes32 candidate) return(bool) {

		for (uint i = 0; i < candidateList.length; i++) {
				if(candidateList[i] == candidate) {
						return true;
				}
		}
		return false;
}


}
