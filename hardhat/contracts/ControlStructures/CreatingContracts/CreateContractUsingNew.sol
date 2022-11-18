// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract A {
    uint public x;

    // Constructor is a function which is called on its own when the contract is deployed. It can payable or non-payable.
    constructor(uint a) payable {
        x = a;
    }
}

contract B {
    // Creating an instance of Contract A named c. This will be executed as part of B's constructor.

    A c = new A(3);

    // Another way of creating a contract using a function;

    function createA(uint arg) public {
        A newA = new A(arg);
        newA.x();
    }

    function createAandSendAmount(uint arg, uint amount) public payable {
        A newA = new A{value: amount}(arg);
        newA.x();
    }
}
