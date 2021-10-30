pragma solidity ^0.5.5;

contract ESCSpecificOne {
    bool public contractStatus;
    uint256 public initiatedDate;
    address owner;

    constructor() public {
        contractStatus = false;
        owner = msg.sender;
        initiatedDate = 9000;
    }

    function deleteVariable(uint256 b) public pure returns (uint256) {
        uint256 a = b;
        delete a;
        return a;
    }

    function getNow() public view returns (uint256) {
        return now;
    }

    function getMsgSender() public view returns (address) {
        return msg.sender;
    }

    function addThree(
        uint256 x,
        uint256 y,
        uint256 k
    ) public pure returns (uint256) {
        return addmod(x, y, k);
    }

    function mulThree(
        uint256 x,
        uint256 y,
        uint256 k
    ) public pure returns (uint256) {
        return mulmod(x, y, k);
    }

    function updateInitiatedDate(uint256 s) public {
        if (1 weeks > s) {
            initiatedDate = s;
        }
    }

    function updateStatus(bool s) public {
        assert(msg.sender == owner);
        contractStatus = s;
    }
}
