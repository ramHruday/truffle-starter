pragma solidity ^0.5.5;
contract ESCSpecific {
    uint256 public _contractBalance;
    constructor(uint256 bal) public {
        _contractBalance = bal;
    }
    function sendHalfBalance(address payable a) public payable  returns(uint256) {
        require(msg.value % 2 == 0, "Even value required.");
        uint256 balBefore = _contractBalance;
        a.transfer(msg.value / 2);
        assert(_contractBalance == balBefore - msg.value / 2);
        return _contractBalance;
    }
    function checkForSzabo(uint256 a, uint256 b) public returns(uint256) {
        if(_contractBalance >= 70 szabo) {
            uint256 sendProfit = _contractBalance;
            return sendProfit;
        }
        return 0;
    }
    function updateContractBal(uint256 a, uint256 cashType) public returns(uint256) {
        uint256 cash;
        if(cashType == 1) {
            cash = a * 1 wei;
        }
        else 
            if(cashType == 2) {
                cash = a * 1 finney;
            }
            else 
                if(cashType == 3) {
                    cash = a * 1 ether;
                }
                else 
                    if(cashType == 4) {
                        cash = a * 1 szabo;
                    }
        return cash;
    }
    function checkForFinney(uint256 a, uint256 b) public returns(uint256) {
        if(_contractBalance >= 70 finney) {
            uint256 sendProfit = _contractBalance;
            return sendProfit;
        }
        return 0;
    }
    function checkForWei(uint256 a, uint256 b) public returns(uint256) {
        if(_contractBalance >= 70 wei) {
            uint256 sendProfit = _contractBalance;
            return sendProfit;
        }
        return 0;
    }
    function checkForEther(uint256 a, uint256 b) public returns(uint256) {
        if(_contractBalance >= 70 ether) {
            uint256 sendProfit = _contractBalance;
            return sendProfit;
        }
        return 0;
    }
}
