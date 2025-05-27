// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "forge-std/Test.sol";
import "../../solutions/Basic1stSolution.sol";

/**
 * @title Basic1stSolutionTest
 * @dev Test for the Basic1st puzzle solution
 */
contract Basic1stSolutionTest is Test {
    Basic1stSolution solution;

    function setUp() public {
        solution = new Basic1stSolution();
    }

    function testEncodeThreeUints() public {
        console.log("========== TESTING SOLUTION: ENCODE THREE UINTS ==========");
        console.log("Verifying that the solution correctly encodes three uint256 values");
        
        // Test with different value sets
        _testSet(1, 2, 3);
        _testSet(115792089237316195423570985008687907853269984665640564039457584007913129639935, 0, 123456789);
        _testSet(0, 0, 0);
        _testSet(123456789, 987654321, 555555555);
        
        console.log("Solution is correct! All tests passed.");
        console.log("=========================================");
    }
    
    function _testSet(uint256 a, uint256 b, uint256 c) internal {
        console.log("Testing with values: %d, %d, %d", a, b, c);
        
        bytes memory encoded = solution.encodeThreeUints(a, b, c);
        bytes memory expected = abi.encode(a, b, c);
        
        assertEq(encoded.length, 96, "Encoded output should be exactly 96 bytes long");
        assertEq(encoded, expected, "Encoded bytes don't match expected ABI encoding");
        
        console.log("Test passed!");
    }
} 