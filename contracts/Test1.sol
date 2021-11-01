pragma solidity ^0.5.5;

contract Test1 {
    uint256 public data;
    uint256[] public arr = [10 , 7, 9, 6];


    //statement deletion
    function sort() public {
        uint256 length = arr.length;
        for(uint i = 0; i < length; i++) {
            for(uint j = i+1; j < length ;j++) {
                if(arr[i] > arr[j]) {
                    uint256 temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
    }
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
	function  indexOfInt(uint256 b) public{
        uint256 i = 0;
        for(i; i < arr.length ; i++)
        {
            if(arr[i] == b)
                data = i;
        }
    }
    function  uniqueItemCount() public{
        uint256 i = 0;
        uint256 j = 0;
        uint256 count = 0;
        uint currItem;
        bool unique = true;
        for(i; i < arr.length ; i++)
        {
            unique = true;
            currItem = arr[i];
            for(j; j < arr.length ; j++)
            {
                if(currItem == arr[j])
                {
                    unique = false;
                }
            }
            if(unique == true)
            {
                count++;
            }
                
        }
        data = count;
    }
    
	function getRange() public {
		uint256 i = 0;
		uint256 high = 1;
		uint256 low = 9999;
        for(i; i < arr.length ; i++)
        {
            if(arr[i] > high)
                high = arr[i];
			if(arr[i] < low)
				low = arr[i];
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
