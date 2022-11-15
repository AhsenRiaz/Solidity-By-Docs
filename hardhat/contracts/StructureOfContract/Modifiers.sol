// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.9;

// Function modifier is a piece of code which is called before function execution. It is used to validate a code before the function is called

contract Purchase {
    address public seller;

    modifier onlySeller() {
        require(msg.sender == seller, "Only seller can call this function");
        _;
    }

    function abort() public onlySeller {}
}
