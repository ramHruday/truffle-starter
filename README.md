This is a truffle project for validating Mutation generation tool called MuSC

Mutation testing is a form of Whitebox, fault-based, software testing that tests the quality and efficacy of test suites by modifying parts of the code. 
Mutation testing injects mutation operators into the code which mimics common programmer errors to detect possible weaknesses in the code or test cases. 
These altered codes are called ‘mutants’. The base code and its mutants are tested and compared. If the test suite is unable to detect the changes made in the mutant code,
then the tests need to be altered. If the tests can detect the difference, then the mutant code can be removed or ‘killed’.  
The mutations to be tested are usually traditional mutation operators, but for Ethereum smart contracts there are special operators unique to ESC. 
