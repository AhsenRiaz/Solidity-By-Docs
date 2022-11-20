// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

// An overflow or underflow is the situation where the resulting value of an arithmetic operation, when executed on an unrestricted integer, falls outside the range of the result type.

contract Arithmetic {
    // f(2,3) => the result is -1. solidity wraps it to positive 1.
    function f(uint a, uint b) public pure returns (uint) {
        // This subtraction will wrap on underflow.

        unchecked {
            return a - b;
        }
    }

    // g(2,3) => will revert the transaction due to underflow. The fact the result being negative
    function g(uint a, uint b) public pure returns (uint) {
        // This subtraction will revert on underflow.

        return a - b;
    }
}
