// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract MemoryArrays {
    // static array
    uint[2] s_array;

    // dynamic array
    uint[] d_array;

    function f(uint len) public pure {
        // dynamic memory array
        // methods like push, pop are not available on dynamic memory / dynamically alloted arrays.
        uint[] memory a = new uint[](len);
        for (uint i = 0; i < 4; i++) {
            a[i] = 2;
        }
    }
}
