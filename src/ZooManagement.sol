// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract ZooManagement {

uint256 public totalVisitors;

struct Animal{
    string species;
    string name;
    uint256 age;
}
// 'listofAnimals' array with Animal struct type
Animal[] public listofAnimals;
// Fixed size array
// Animal[3] public listofAnimals;
// uint256 public animalCount;
mapping (string => uint256) public nameToAge;
mapping (string => string) public speciesToName;
mapping (uint256 => string) public ageToName;
mapping (uint256 => string) public ageToSpecies;
mapping (string => string) public nameToSpecies;
mapping (string => uint256) public speciesToAge;


// Animal public tiger= Animal("Tiger", "Peanut", 10);
// Animal public bear = Animal("Bear", "Honey", 4);
// Animal public lion= Animal("Lion", "Simba", 8);


function updateVisitorCount(uint256 _newVisitorCount) public{
    totalVisitors = _newVisitorCount;
}

function getTotalVisitors() public view returns(uint256){
    return totalVisitors;
}

function addAnimal(string memory _species, string memory _name, uint256 _age) public {
    // require(animalCount<3,"Zoo is full");
    // listofAnimals[animalCount] = Animal(_species, _name, _age);
    listofAnimals.push(Animal(_species,_name, _age));
     nameToAge[_name]= _age;
     speciesToName[_species]= _name;
     ageToName[_age]= _name;
     ageToSpecies[_age]= _species;
     nameToSpecies[_name]= _species;
     speciesToAge[_species]= _age;
    // animalCount++;
}

// function getAnimal(uint256 _index) public view returns (string memory, string memory, uint256){
//     require(_index<animalCount,"Animal does not exist");
//     Animal memory animal = listofAnimals[_index];
//     return (animal.species,animal.name,animal.age);
// }

}