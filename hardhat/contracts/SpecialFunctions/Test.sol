// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract Test {
    uint x;

    fallback() external {
        x = 1;
    }
}

contract TestPayable {
    uint x;
    uint y;

    fallback() external payable {
        x = 1;
        y = msg.value;
    }

    receive() external payable {
        x = 2;
        y = msg.value;
    }
}

contract Caller {
    function callTest(Test test) public returns (bool) {
        // will result in x becoming 1
        (bool success, ) = address(test).call(
            abi.encodeWithSignature("nonExistingCall")
        );
        require(success);

        // will revert caust of fallback function being not payable
        address payable testPayable = payable(address(test));
        return testPayable.send(2 ether);
    }

    function callTestPayable(address testPayable) public returns (bool) {
        // will result in x becoming 1
        (bool success, ) = address(testPayable).call(
            abi.encodeWithSignature("nonExistingCall")
        );
        require(success);

        // will resultin x becoming 1. notExistentCalls invoke fallback function
        (success, ) = address(testPayable).call{value: 1 ether}(
            abi.encodeWithSignature("nonExistingCall")
        );
        require(success);

        // will resultin x becoming 2. We are not calling any function. Only sending some ether
        (success, ) = address(testPayable).call{value: 1 ether}("");
        require(success);

        return true;
    }
}
