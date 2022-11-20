// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract Receive {
    event Received(address, uint);

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }
}
