pragma solidity ^0.5.5;

contract Arthmetic {
    uint256 public data;

    function setData(uint256 a) public {
        data = a;
    }

    function add(uint256 a, uint256 b) public {
        data = a + b;
    }

    function addWithMod(uint256 a, uint256 b) public {
        data = addmod(a, b, 1);
    }
}
