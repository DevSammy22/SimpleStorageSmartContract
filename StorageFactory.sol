// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;
import "./SimpleStorage.sol"; //This makes the StorageFactory knows about SimpleStorage

contract StorageFactory{
    //To create a variable, we have:
    //SimpleStorage is the type; public is the visibility specifier,simpleStorage is the variable where to store the simpleStorageContract
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //To interact between different contracts, we need the below: 
        //Address
        //ABI - Application Binary Interface
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // simpleStorage.store(_simpleStorageNumber);
        //The above two lines of codes can be written on one line as below:
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // return simpleStorage.retrieve();
        //The above two lines of codes can be written on one line as below:
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }

}