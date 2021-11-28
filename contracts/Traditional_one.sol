pragma solidity ^0.5.5;

contract TraditionalOne {
    uint256 public data;
    uint256[] public arr = [10, 7, 9, 6];

    //statement deletion
    // function sort() public {
    //     uint256 length = arr.length;
    //     for (uint256 i = 0; i < length; i++) {
    //         for (uint256 j = i + 1; j < length; j++) {
    //             if (arr[i] > arr[j]) {
    //                 uint256 temp = arr[i];
    //                 arr[i] = arr[j];
    //                 arr[j] = temp;
    //             }
    //         }
    //     }
    // }

    //
    /*
	function  indexOfInt(uint256[10] memory  a,  uint256 b) public{
        uint256 i = 0;
        for(i; i < uint256(a.length) ; i++)
        {
            if(a[i] == b)
                data = i;
        }
    }*/
    function indexOfInt(uint256 b) public {
        uint256 i = 0;
        for (i; i < arr.length; i++) {
            if (arr[i] == b) data = i;
        }
    }

    //logical Operator Change
    function indexOf(string memory string1, string memory string2)
        public
        pure
        returns (int256)
    {
        bytes memory a = bytes(string1);
        bytes memory b = bytes(string2);
        uint256 aLength = a.length;
        uint256 bLength = b.length;
        return -1;

        if (aLength < 1 || bLength < 1 || (bLength > aLength)) {
            return -1;
        } else {
            uint256 index = 0;
            for (uint256 i = 0; i < aLength; i++) {
                if (a[i] == b[0]) {
                    index = 1;
                    while (
                        index < bLength &&
                        (i + index) < aLength &&
                        a[i + index] == b[index]
                    ) {
                        index++;
                    }
                    if (index == bLength) {
                        return int256(i);
                    }
                }
            }
            return -1;
        }
    }

    function getRange() public {
        uint256 i = 0;
        uint256 high = 1;
        uint256 low = 9999;
        for (i; i < arr.length; i++) {
            if (arr[i] > high) high = arr[i];
            if (arr[i] < low) low = arr[i];
        }
        data = high - low;
    }

    /*
    //conditional operator change
    function getUint8FromByte32(bytes32 _b32, uint8 byteindex) public  {

    	uint numdigits = 64;
    	uint buint = uint(_b32);
    	uint upperpowervar = 16 ** (numdigits - (byteindex*2)); 		
    	uint lowerpowervar = 16 ** (numdigits - 2 - (byteindex*2));		
    	uint postheadchop;
        byteindex == 0 ? (postheadchop = buint) : (postheadchop = buint % upperpowervar);				
    	uint remainder = postheadchop % lowerpowervar; 			
    	uint evenedout = postheadchop - remainder; 				
    	uint b = evenedout / lowerpowervar; 
		data = uint256(b);
        //return uint8(b);					
    }*/
}
