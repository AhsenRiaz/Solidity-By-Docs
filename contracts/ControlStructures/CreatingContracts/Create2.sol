// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;
import "hardhat/console.sol";

contract A {
    uint256 private x;

    constructor(uint256 a) {
        x = a;
    }

    function getX() public view returns (uint256) {
        return x;
    }
}

contract Create2 {
    function createDSalted(uint256 arg) public returns (address) {
        // this ways solidity used create2 opcode to deploy contract.
        // Traditionaly hash of msg.sender and nonce is used to derive contract address
        // This way Create2 hash of a constant 0xff, msg.sender, salt and bytecode is used.
        // This way we can derive the contract address before it is created because nonce is not used

        // we will pass the salt. other parameters will be handled by solidity
        A newA = new A{salt: bytes32(uint256(0xff))}(arg);

        // Thats how solidity does it behind the scene
        address predictAddress = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            bytes1(0xff),
                            msg.sender,
                            bytes32(uint256(0xff)),
                            keccak256(
                                abi.encodePacked(
                                    type(A).creationCode,
                                    abi.encode(arg)
                                )
                            )
                        )
                    )
                )
            )
        );
        assert(address(newA) == predictAddress);
    }
}
