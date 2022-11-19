// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract Fallback {
    uint x;

    fallback() external {
        x = 1;
    }
}
