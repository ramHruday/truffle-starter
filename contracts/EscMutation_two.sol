pragma solidity ^0.5.5;

contract ESCSpecificTwo {
    uint256 public contractBalance;

    constructor(uint256 bal) public {
        contractBalance = bal;
    }

    function sendHalfBalance(address payable a)
        public
        payable
        returns (uint256)
    {
        require(msg.value % 2 == 0, "Even value required.");
        a.transfer(msg.value / 2);
        contractBalance = contractBalance - msg.value / 2;
        return contractBalance;
    }

    function updateContractBal(uint256 a, uint256 cashType)
        public
        returns (uint256)
    {
        require(
            cashType <= 4,
            "Supported conversions are wei,ether,finney,ether,szabo"
        );
        uint256 cash;
        if (cashType == 1) {
            cash = a * 1 wei;
        } else if (cashType == 2) {
            cash = a * 1 finney;
        } else if (cashType == 3) {
            cash = a * 1 ether;
        } else if (cashType == 4) {
            cash = a * 1 szabo;
        }
        contractBalance = cash;
    }

    function checkForSzabo() public view returns (uint256) {
        if (contractBalance >= 70 szabo) {
            uint256 sendProfit = contractBalance;
            return sendProfit;
        }
        return 0;
    }

    function checkForFinney() public view returns (uint256) {
        if (contractBalance >= 70 finney) {
            uint256 sendProfit = contractBalance;
            return sendProfit;
        }
        return 0;
    }

    function checkForWei() public view returns (uint256) {
        if (contractBalance >= 70 wei) {
            uint256 sendProfit = contractBalance;
            return sendProfit;
        }
        return 0;
    }

    function checkForEther() public view returns (uint256) {
        if (contractBalance >= 70 ether) {
            uint256 sendProfit = contractBalance;
            return sendProfit;
        }
        return 0;
    }
}
