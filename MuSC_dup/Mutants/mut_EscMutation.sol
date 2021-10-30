3 FVC
    constructor(uint256 bal) private {
3 FVC
    constructor(uint256 bal) internal {
6 FVC
    function sendHalfBalance(address payable a) private payable  returns(uint256) {
6 FVC
    function sendHalfBalance(address payable a) internal payable  returns(uint256) {
6 PKD
    function sendHalfBalance(address payable a) public   returns(uint256) {
7 AOR
        require(msg.value + 2 == 0, "Even value required.");
7 AOR
        require(msg.value - 2 == 0, "Even value required.");
7 AOR
        require(msg.value * 2 == 0, "Even value required.");
7 AOR
        require(msg.value / 2 == 0, "Even value required.");
7 ROR
        require(msg.value % 2 != 0, "Even value required.");
7 ROR
        require(msg.value % 2 > 0, "Even value required.");
7 ROR
        require(msg.value % 2 >= 0, "Even value required.");
7 ROR
        require(msg.value % 2 < 0, "Even value required.");
7 ROR
        require(msg.value % 2 <= 0, "Even value required.");
7 RSD
        //require(msg.value % 2 == 0, "Even value required.");
7 RSC
        require(!(msg.value % 2 == 0, "Even value required."));
9 AOR
        a.transfer(msg.value % 2);
9 AOR
        a.transfer(msg.value + 2);
9 AOR
        a.transfer(msg.value - 2);
9 AOR
        a.transfer(msg.value * 2);
10 ROR
        assert(_contractBalance != balBefore - msg.value / 2);
10 ROR
        assert(_contractBalance > balBefore - msg.value / 2);
10 ROR
        assert(_contractBalance >= balBefore - msg.value / 2);
10 ROR
        assert(_contractBalance < balBefore - msg.value / 2);
10 ROR
        assert(_contractBalance <= balBefore - msg.value / 2);
10 AOR
        assert(_contractBalance == balBefore * msg.value / 2);
10 AOR
        assert(_contractBalance == balBefore / msg.value / 2);
10 AOR
        assert(_contractBalance == balBefore % msg.value / 2);
10 AOR
        assert(_contractBalance == balBefore + msg.value / 2);
10 AOR
        assert(_contractBalance == balBefore - msg.value % 2);
10 AOR
        assert(_contractBalance == balBefore - msg.value + 2);
10 AOR
        assert(_contractBalance == balBefore - msg.value - 2);
10 AOR
        assert(_contractBalance == balBefore - msg.value * 2);
13 FVC
    function checkForSzabo(uint256 a, uint256 b) private returns(uint256) {
13 FVC
    function checkForSzabo(uint256 a, uint256 b) internal returns(uint256) {
14 ROR
        if(_contractBalance < 70 szabo) {
14 ROR
        if(_contractBalance <= 70 szabo) {
14 ROR
        if(_contractBalance == 70 szabo) {
14 ROR
        if(_contractBalance != 70 szabo) {
14 ROR
        if(_contractBalance > 70 szabo) {
14 EUR
        if(_contractBalance >= 70 wei) {
14 EUR
        if(_contractBalance >= 70 finney) {
14 EUR
        if(_contractBalance >= 70 ether) {
14 CSC
        if(true) {
14 CSC
        if(false) {
20 FVC
    function updateContractBal(uint256 a, uint256 cashType) private returns(uint256) {
20 FVC
    function updateContractBal(uint256 a, uint256 cashType) internal returns(uint256) {
22 ROR
        if(cashType != 1) {
22 ROR
        if(cashType > 1) {
22 ROR
        if(cashType >= 1) {
22 ROR
        if(cashType < 1) {
22 ROR
        if(cashType <= 1) {
22 CSC
        if(true) {
22 CSC
        if(false) {
23 AOR
            cash = a / 1 wei;
23 AOR
            cash = a % 1 wei;
23 AOR
            cash = a + 1 wei;
23 AOR
            cash = a - 1 wei;
23 EUR
            cash = a * 1 finney;
23 EUR
            cash = a * 1 szabo;
23 EUR
            cash = a * 1 ether;
26 ROR
            if(cashType != 2) {
26 ROR
            if(cashType > 2) {
26 ROR
            if(cashType >= 2) {
26 ROR
            if(cashType < 2) {
26 ROR
            if(cashType <= 2) {
26 CSC
            if(true) {
26 CSC
            if(false) {
27 AOR
                cash = a / 1 finney;
27 AOR
                cash = a % 1 finney;
27 AOR
                cash = a + 1 finney;
27 AOR
                cash = a - 1 finney;
27 EUR
                cash = a * 1 wei;
27 EUR
                cash = a * 1 szabo;
27 EUR
                cash = a * 1 ether;
30 ROR
                if(cashType != 3) {
30 ROR
                if(cashType > 3) {
30 ROR
                if(cashType >= 3) {
30 ROR
                if(cashType < 3) {
30 ROR
                if(cashType <= 3) {
30 CSC
                if(true) {
30 CSC
                if(false) {
31 AOR
                    cash = a / 1 ether;
31 AOR
                    cash = a % 1 ether;
31 AOR
                    cash = a + 1 ether;
31 AOR
                    cash = a - 1 ether;
31 EUR
                    cash = a * 1 wei;
31 EUR
                    cash = a * 1 finney;
31 EUR
                    cash = a * 1 szabo;
34 ROR
                    if(cashType != 4) {
34 ROR
                    if(cashType > 4) {
34 ROR
                    if(cashType >= 4) {
34 ROR
                    if(cashType < 4) {
34 ROR
                    if(cashType <= 4) {
34 CSC
                    if(true) {
34 CSC
                    if(false) {
35 AOR
                        cash = a / 1 szabo;
35 AOR
                        cash = a % 1 szabo;
35 AOR
                        cash = a + 1 szabo;
35 AOR
                        cash = a - 1 szabo;
35 EUR
                        cash = a * 1 wei;
35 EUR
                        cash = a * 1 finney;
35 EUR
                        cash = a * 1 ether;
39 FVC
    function checkForFinney(uint256 a, uint256 b) private returns(uint256) {
39 FVC
    function checkForFinney(uint256 a, uint256 b) internal returns(uint256) {
40 ROR
        if(_contractBalance < 70 finney) {
40 ROR
        if(_contractBalance <= 70 finney) {
40 ROR
        if(_contractBalance == 70 finney) {
40 ROR
        if(_contractBalance != 70 finney) {
40 ROR
        if(_contractBalance > 70 finney) {
40 EUR
        if(_contractBalance >= 70 wei) {
40 EUR
        if(_contractBalance >= 70 szabo) {
40 EUR
        if(_contractBalance >= 70 ether) {
40 CSC
        if(true) {
40 CSC
        if(false) {
46 FVC
    function checkForWei(uint256 a, uint256 b) private returns(uint256) {
46 FVC
    function checkForWei(uint256 a, uint256 b) internal returns(uint256) {
47 ROR
        if(_contractBalance < 70 wei) {
47 ROR
        if(_contractBalance <= 70 wei) {
47 ROR
        if(_contractBalance == 70 wei) {
47 ROR
        if(_contractBalance != 70 wei) {
47 ROR
        if(_contractBalance > 70 wei) {
47 EUR
        if(_contractBalance >= 70 finney) {
47 EUR
        if(_contractBalance >= 70 szabo) {
47 EUR
        if(_contractBalance >= 70 ether) {
47 CSC
        if(true) {
47 CSC
        if(false) {
53 FVC
    function checkForEther(uint256 a, uint256 b) private returns(uint256) {
53 FVC
    function checkForEther(uint256 a, uint256 b) internal returns(uint256) {
54 ROR
        if(_contractBalance < 70 ether) {
54 ROR
        if(_contractBalance <= 70 ether) {
54 ROR
        if(_contractBalance == 70 ether) {
54 ROR
        if(_contractBalance != 70 ether) {
54 ROR
        if(_contractBalance > 70 ether) {
54 EUR
        if(_contractBalance >= 70 wei) {
54 EUR
        if(_contractBalance >= 70 finney) {
54 EUR
        if(_contractBalance >= 70 szabo) {
54 CSC
        if(true) {
54 CSC
        if(false) {
