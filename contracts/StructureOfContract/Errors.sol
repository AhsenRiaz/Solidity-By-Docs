// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

// Errors allow you to define descriptive names and data for failure situations. Errors can be used in revert statements. In comparison to string descriptions, errors are much cheaper and allow you to encode additional data. You can use NatSpec to describe the error to the user.

contract Token {
    mapping(address => uint) public balances;

    /// Not enough funds for transfer. Requested `requested`
    /// but only `available` available
    error NotEnoughFunds(uint requested, uint available);

    function transfer(uint amount, address to) public {
        uint balance = balances[msg.sender];
        if (balance < amount) {
            revert NotEnoughFunds(amount, balance);
        }

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}
