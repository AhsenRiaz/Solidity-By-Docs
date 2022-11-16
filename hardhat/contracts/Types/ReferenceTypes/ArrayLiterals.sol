// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract ArrayLiterals {
    function f() public {
        // This will give an error because g() wants an array of uint[] but the array that is being passed is an array of uint8[3]. We can fix this issue by typecasting the first element of array to uint.
        // g([1, 2, 3]);

        g([uint(1), 2, 3]);
    }

    function g(uint[3] memory) public {}
}
