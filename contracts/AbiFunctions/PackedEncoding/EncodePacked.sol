// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract EncodePacked {
    function encodePack(string memory name) public pure returns (bytes memory) {
        return abi.encodePacked(name);
    }
}
