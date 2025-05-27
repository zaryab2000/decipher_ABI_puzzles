// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "forge-std/Test.sol";
import "../../src/basics/Basic1st.sol";

/**
 * @title Basic1stTest
 * @dev Test for the Basic1st puzzle
 */
contract Basic1stTest is Test {
    Basic1st puzzle;

    function setUp() public {
        puzzle = new Basic1st();
    }

    function testEncodeThreeUints() public {
        console.log("========== PUZZLE: ENCODE THREE UINTS ==========");
        console.log("Encoding three uint256 values in proper ABI format");
        
        // Test with different value sets
        _testSet(1, 2, 3);
        _testSet(115792089237316195423570985008687907853269984665640564039457584007913129639935, 0, 123456789);
        _testSet(0, 0, 0);
        _testSet(123456789, 987654321, 555555555);
        
        console.log("CONGRATULATIONS! You've successfully completed the Basic1st puzzle!");
        console.log("=========================================");
    }
    
    function _testSet(uint256 a, uint256 b, uint256 c) internal {
        console.log("Testing with values: %d, %d, %d", a, b, c);
        
        bytes memory encoded = puzzle.encodeThreeUints(a, b, c);
        
        // Check length
        assertEq(encoded.length, 96, "Encoded output should be exactly 96 bytes long");
        
        // Decode and verify values
        uint256 decodedA = _extractUint(encoded, 0);
        uint256 decodedB = _extractUint(encoded, 32);
        uint256 decodedC = _extractUint(encoded, 64);
        
        assertEq(decodedA, a, "First value doesn't match");
        assertEq(decodedB, b, "Second value doesn't match");
        assertEq(decodedC, c, "Third value doesn't match");
        
        console.log("Test passed!");
    }
    
    // Helper function to extract a uint256 from a bytes array at the given offset
    function _extractUint(bytes memory data, uint256 offset) internal pure returns (uint256 value) {
        require(offset + 32 <= data.length, "Offset out of bounds");
        
        assembly {
            value := mload(add(add(data, 32), offset))
        }
    }
} 