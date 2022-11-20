// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;
import "hardhat/console.sol";

contract ExternalWorld {
    function foo() public view {
        console.log("hello");
    }

    function bar(uint32 age) public pure returns (uint32) {
        return age;
    }
}

contract User {
    bytes4 constant FOO_SELECTOR = bytes4(keccak256("foo()"));
    bytes4 constant BAR_SELECTOR = bytes4(keccak256("bar(uint32)"));

    function encodeWithSelector(ExternalWorld externalWorld, uint32 age)
        public
        returns (uint)
    {
        (bool success, bytes memory returnedData) = address(externalWorld).call(
            abi.encodeWithSelector(FOO_SELECTOR)
        );

        (success, returnedData) = address(externalWorld).call(
            abi.encodeWithSelector(BAR_SELECTOR, age)
        );

        if (success) {
            return abi.decode(returnedData, (uint));
        }
        require(success);
        return (0);
    }
}
