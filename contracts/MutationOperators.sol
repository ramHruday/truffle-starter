pragma solidity ^0.5.5;
contract MutationOperators {
    uint public a;
    uint public b;
    uint256[100] public deposits;
    uint256 public deposit;

    struct Item {
        uint price;
        uint units; 
    }
    Item[] public items;  


    function setData(uint _a, uint _b) public {
        a=_a;
        b=_b;
    }

    function aAndbSquare(bool isAPlusB) public view returns (uint){
        uint result=0;
        if(isAPlusB == true){
            result = (a*a)+(2*a*b)+(b*b);
        }
        else{
            result = (a*a)-(2*a*b)+(b*b);
        }
        return result;
    }


}