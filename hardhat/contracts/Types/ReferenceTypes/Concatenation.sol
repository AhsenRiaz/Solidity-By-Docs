// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;
import "hardhat/console.sol";

contract Concatenation {
    string s = "Storage";

    function f(bytes calldata bc, string memory sm) public view {
        string memory concatString = string.concat(
            s,
            string(bc),
            "Literal",
            sm
        );
        assert(
            (bytes(s).length + bc.length + 7 + bytes(sm).length) ==
                bytes(concatString).length
        );
    }
}
