pragma solidity ^0.5.5;

contract MutationOperatorsTwo {
    uint256[100] public deposits;
    uint256 public deposit;

    struct Item {
        uint256 price;
        uint256 units;
    }
    Item[] public items;

    function sum(uint256 count) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < count; i++) {
            sum = sum + i;
        }
        return sum;
    }

    function setUsingMemory(uint256 _itemIdx, uint256 _units) public view {
        Item memory item = items[_itemIdx];
        item.units = _units;
    }

    function getUsingMemory(uint256 _itemIdx) public view returns (uint256) {
        Item memory item = items[_itemIdx];
        return item.units;
    }

    function depositAmount(address payable acc) public returns (uint256) {
        acc.transfer(1000);
        deposit = deposit + 1000;
        return deposit;
    }
}
