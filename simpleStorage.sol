// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // State variable to store a number
    uint256 private storedData;

    // Event to be emitted when the data is updated
    event DataStored(uint256 newValue);

    // Function to set the value of storedData
    function set(uint256 x) public {
        storedData = x;
        // Emit the event
        emit DataStored(x);
    }

    // Function to retrieve the value of storedData
    function get() public view returns (uint256) {
        return storedData;
    }
}