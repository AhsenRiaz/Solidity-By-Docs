// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.9;

contract ValueTypes {
    bool public a_bool;

    uint public a_uint;

    address public an_address;

    bytes1 public a_byte;

    enum ActionChoices {
        GoLeft,
        GoRight,
        GoStraight,
        SitStill
    }
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() public {
        choice = ActionChoices.GoStraight;
    }

    function setChoice(ActionChoices newChoice) public {
        choice = newChoice;
    }

    function getChoice() public view returns (ActionChoices) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice);
    }
}
