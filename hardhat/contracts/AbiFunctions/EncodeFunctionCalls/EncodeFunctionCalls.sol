// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;
import "hardhat/console.sol";

contract ExternalWorld {
    function foo() public view {
        console.log("hello");
    }

    function bar(uint32 age) public view {
        console.log("age", age);
    }
}

contract User {
    function encodeFunctionCall(ExternalWorld externalWorld, uint32 age)
        public
    {
        (bool success, ) = address(externalWorld).call(
            abi.encodeWithSignature("foo()")
        );

        (success, ) = address(externalWorld).call(
            abi.encodeWithSignature("bar(uint32)", age)
        );

        require(success);
    }
}
