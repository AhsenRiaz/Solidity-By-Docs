// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract Public {
    // public functions are expensive due to fact that arguments are copied to memory
    function foo(uint[] memory a) public pure returns (uint[] memory) {
        return a;
    }
}
