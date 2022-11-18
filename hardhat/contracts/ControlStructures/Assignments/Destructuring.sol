// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract Desctrucruting {
    function foo()
        public
        view
        returns (
            uint,
            bool,
            uint
        )
    {
        return (2, true, 4);
    }

    function bar() public view {
        (uint x, bool a_bool, uint y) = foo();
        (uint a, , uint b) = foo();
        // swap value
        (x, y) = (y, x);
    }
}
