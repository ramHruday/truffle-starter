pragma solidity ^0.5.5;

contract Arthmetic {
    uint256 public data;
    string public strData;
    uint256[4] array1 = [10, 7, 8, 9];
    uint256[4] array2 = [0, 2, 6, 10];
    uint256[8] public array3;
    bool dataB;

    function compareSums() public {
        if (array1.length < 0 || array2.length < 0) data = 0;
        uint256 count;
        uint256 i = 0;
        uint256 sumA = 0;
        uint256 sumB = 0;
        for (i = 0; i < count; i++) {
            sumA += array1[i];
        }
        for (i = 0; i < count; i++) {
            sumB += array2[i];
        }
        if (sumA > sumB) data = 1;
        else data = 2;
        //data = (sumA > sumB ? 1 : 2);
    }

    //return value change
    function turnToString(uint256 value) external pure returns (string memory) {
        uint256 val = value;
        if (value == 0) {
            return "0";
        }
        uint256 temp = val;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (val != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            val /= 10;
        }
        return string(buffer);
    }

    function pwr(uint256 a, uint256 b) public {
        data = a**b;
    }

    function contains(uint256 b) public {
        uint256 i = 0;
        data = 0;
        for (i = 0; i < array1.length; i++) {
            if (array1[i] == b) data = 1;
        }
    }

    function concati() public {
        uint256 i = 0;
        for (i = 0; i < array1.length; i++) {
            array3[i] = array1[i];
        }
        for (i; i < array2.length; i++) {
            array3[i] = array2[i];
        }
    }
}
