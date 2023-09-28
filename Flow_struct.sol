// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyContract {
    // Define a struct
    struct Person {
        string name;
        uint age;
    }

    // Declare an array of the struct type
    Person[] public people;

    // Function to add a new person to the array
    function addPerson(string memory _name, uint _age) public {
        people.push(Person(_name, _age));
    }

    // Function to get the number of people in the array
    function getPeopleCount() public view returns (uint) {
        return people.length;
    }

    // Function to get the details of a person at a specific index in the array
    function getPerson(uint index) public view returns (string memory, uint) {
        require(index < people.length, "Index out of bounds");
        return (people[index].name, people[index].age);
    }
}
