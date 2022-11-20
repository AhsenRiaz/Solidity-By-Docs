// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract Private {
    // private function are kept private from the other contracts. If any contract inherits this contract they cannot call the foo() function
    function foo() private pure returns (uint[3] memory) {
        // this was done to demonstrate that how to typecast a uint8[] to uint[] array.
        return [uint(1), 2, 3];
    }
}
