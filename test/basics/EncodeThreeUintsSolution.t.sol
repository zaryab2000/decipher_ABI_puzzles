// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../../src/basics/EncodeThreeUintsSolution.sol";


contract EncodeThreeUintsSolutionTest is Test {
    EncodeThreeUintsSolution public solution;

    function setUp() public {
        solution = new EncodeThreeUintsSolution();
    }

    function testEncodeThreeUints() public {
        // Test case 1: Small numbers
        uint256 a1 = 1;
        uint256 b1 = 2;
        uint256 c1 = 3;
        bytes memory encoded1 = solution.encodeThreeUints(a1, b1, c1);
        
        // Verify the encoded result matches the expected ABI encoding
        bytes memory expected1 = abi.encode(a1, b1, c1);
        assertEq(encoded1, expected1, "Failed to encode small numbers correctly");
        console.logBytes(encoded1);
        console.logBytes(expected1);

        // Test case 2: Large numbers
        uint256 a2 = 12345678901234567890;
        uint256 b2 = 98765432109876543210;
        uint256 c2 = 115792089237316195423570985008687907853269984665640564039457584007913129639935; 
        bytes memory encoded2 = solution.encodeThreeUints(a2, b2, c2);
        
        // Verify the encoded result matches the expected ABI encoding
        bytes memory expected2 = abi.encode(a2, b2, c2);
        assertEq(encoded2, expected2, "Failed to encode large numbers correctly");

        // Test case 3: Zero values
        uint256 a3 = 0;
        uint256 b3 = 0;
        uint256 c3 = 0;
        bytes memory encoded3 = solution.encodeThreeUints(a3, b3, c3);
        
        // Verify the encoded result matches the expected ABI encoding
        bytes memory expected3 = abi.encode(a3, b3, c3);
        assertEq(encoded3, expected3, "Failed to encode zero values correctly");
    }
} 