// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract External {
    // will cost much less gas as the arguments are stored in calldata. Unlike public function arguments are not copied in memory
    function foo(uint a, uint b) external view returns (uint) {
        return a + b;
    }
}
