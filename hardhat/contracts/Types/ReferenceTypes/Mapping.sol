// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract MappingExample {
    // Mapping is a hash table. It is used to store key valur pairs
    mapping(address => uint) public balances;

    function update(uint amount) public {
        balances[msg.sender] += amount;
    }
}

contract MappingUser {
    function f() public {
        MappingExample m = new MappingExample();
        m.update(100);
    }
}
