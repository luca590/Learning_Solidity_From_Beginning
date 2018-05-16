/**
* Contract for storing structures to create stablecoin
*/

pragma solidity ^0.4.19;

contract StructureContract {
	mapping (uint256 => uint256[]) public structureArray; // array contianing strikes for structure
	uint256 structureId;
	uint256[] strikesArray

	function StructureContract () {
		structureId = 0;
	}

	/**
	* Add an array of strikes to be stored in the contract
    * Requirements for adding arrays should be set here
	*/
	function addStructure(structureStrikes[]) public {
		structureArray[structureId] = structureStrikes; //create structure array
		structureId += 1;

		//how to store prices (float)

	}

	function addStructureTest() public return(uint256) {
		uint256[] memory test1 = [5, 10, 20, 100]
		structureArray[structureId] = test1; //create structure array
		structureId += 1;

		uint256[] memory test2 = [4, 15, 33, 110]
		structureArray[structureId] = test2; //create structure array
		structureId += 1;

		return structureId;
	}

	/**
	* Should call an oracle and iterate through the outstanding arrays of strikes
    * Then adjust the strike of the short put (downward) and create a call spread
	*/
	function reconstitute() {
		//iterate through arrays, change strike and create call spread - depending on calculations

	}

	function reconstituteTest() {
		oracleTest = 3; //let's say the price of underlying has changed such that now the appropriate strike price is 3

		for(uint i = 0; i < structureArray.length(); i++) {
			//create the call spread then
			//...
			structureArray[i][0] = 3; //set short put strike to 3 in all arrays
		}

	}

	/**
	*
	*/
	function issueOptionExecutableTokens() {

	}

	/**
	* Contract for storing structures to create stablecoin
	*/
	function executeMyOption () {

	}

	/**
	* Coordinate with the array of owners
	*/
	function transfer() {

	}

}
