// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.9;

// Events are convenience interfaces with the EVM logging facilities. These are a piece of code which are emitted when an action is performed on the Ethereum

contract SimpleAuction {
    event HighestBidIncreased(address bidder, uint amount);

    function bid() public payable {
        emit HighestBidIncreased(msg.sender, msg.value);
    }
}
