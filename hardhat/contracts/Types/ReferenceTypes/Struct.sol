// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.12;

contract Struct {
    // Struct is used to create a data type by grouping number of data types.
    struct School {
        string teacherName;
        uint numberOfCourses;
    }

    uint public counter;

    mapping(uint => School) school;

    function addTeacherInfo(string calldata _teacherName, uint _numberofCourses)
        public
    {
        counter++;
        school[counter] = School({
            teacherName: _teacherName,
            numberOfCourses: _numberofCourses
        });
    }
}
