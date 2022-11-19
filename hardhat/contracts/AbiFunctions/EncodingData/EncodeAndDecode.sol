// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;
import "hardhat/console.sol";

contract EncodeAndDecode {
    function encodeString(string memory name)
        public
        pure
        returns (bytes memory)
    {
        return abi.encode(name);
    }

    function encodeUint(uint age) public pure returns (bytes memory) {
        return abi.encode(age);
    }
    
    function decode(bytes memory data)
        public
        pure
        returns (string memory name)
    {
        (name) = abi.decode(data, (string));
    }
}
