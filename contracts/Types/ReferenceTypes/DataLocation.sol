// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract C {
    // the data location of x is storage
    // x is a reference type variable which points to the location where data is stored
    // i.e storage

    uint[] x;

    // data location of memoryArray is memory
    function f(uint[] memory memoryArray) public {
        x = memoryArray; // copies the memoryArray to x in storage.

        // assigns a pointer to x. data location of y is storage
        uint[] storage y = x;

        y[2];
        y.pop(); // modifies x through y
        delete x; // clears the array, also modifies y;

        g(x); // calls g, create an independant copy of x in memory,
        h(x); // calls h, passes the reference to x in the storage.
    }

    function g(uint[] memory) public {}

    function h(uint[] storage) internal {}
}
