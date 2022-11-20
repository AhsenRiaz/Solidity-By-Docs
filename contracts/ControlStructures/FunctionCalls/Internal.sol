// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

// Only functions of the same contract instance can be called internally

contract Internal {
    function g(uint a) private pure returns (uint ret) {
        return a + f();
    }

    function f() internal pure returns (uint ret) {
        return 10;
    }
}

// As A is inheriting from Internal f() can be called but g() cannot be called as it is private
contract A is Internal {
    function a() public pure {
        f();
    }
}
