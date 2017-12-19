//https://medium.com/@mvmurthy/full-stack-hello-world-voting-ethereum-dapp-tutorial-part-1-40d2d0d807c2
pragma solidity ^0.4.11; //need to specify version of compiler to be called, potential security risk if wrong

contract Voting {	

	// Equivalent to AssociativeArray or Hash. Key-value mapping. Key is bytes32 adn value is uint8
	mapping (bytes32 ==> uint8) public votesRecieved		//will store the number of votes recieved
	bytes32[] public candidateList;	//array of candidates (strings), stored as an array of 32 bytes 
	
	function Voting(bytes32[] candidateNames) { // This is our constructor for the class
//constructor gets called only once when dapp is deployed on Eth. Cannot overwrite, can only create new contract which will be initialized with its own constructor
			candidateList = candidateNames;
	}
	
	//Returns total votes candidate has recieved so far
	function totalVotesFor(bytes32 candidate) return(uint) {
			require(validCandidate(candidate))
			return votesRecieved[candidate];
	}
	
	//increments vote count for specific candidate
	function votingForCandidate(bytes32 candidate) {
			require(validCandidate(candidate))	//same as if(false) throw
			votesRecieved[candidate] += 1
	}
	
	//checks validity of candidate
	function validCandidate(bytes32 candidate) return(bool) {
			for (uint i = 0; i < candidateList.length; i++) {
					if(candidateList[i] == candidate) {
							return true;
					}
			}
			return false;
	}


}
