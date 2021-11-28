pragma solidity ^0.4.15;

contract Overflow {
    uint256 private sellerBalance = 0;

    function add(uint256 value) returns (bool) {
        sellerBalance += value; // possible overflow

        // possible auditor assert
        // assert(sellerBalance >= value);
    }

    function safe_add(uint256 value) returns (bool) {
        require(value + sellerBalance >= sellerBalance);
        sellerBalance += value;
    }
}
