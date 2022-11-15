// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.9;

// Structs are custom defined types that can group several variables.

contract Ballot {
    struct Voter {
        bool voted;
        uint vote;
    }
}
