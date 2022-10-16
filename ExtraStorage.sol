// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
//below is how we achieve inheritance in solidity
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage  {
    function store(uint256 _favoritrNumber) public override{
        favoriteNumber = _favoritrNumber + 5;
    }
}