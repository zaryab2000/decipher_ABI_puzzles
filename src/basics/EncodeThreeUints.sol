// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title Basic1st
 * @dev A basic puzzle to encode three uint256 values according to ABI specs
 * 
 * PUZZLE DESCRIPTION:
 * Write an assembly implementation that ABI encodes three uint256 values.
 * The function should return the encoded bytes that match Ethereum's ABI encoding rules.
 * 
 * HINTS:
 * - In ABI encoding, static types like uint256 are stored in-place
 * - Each uint256 takes exactly 32 bytes
 * - The bytes must be tightly packed
 * - Order matters: a, b, c should appear in that order
 */
contract Basic1st {
    /**
     * @dev Encode three uint256 values according to ABI specs
     * @param a First uint256 value
     * @param b Second uint256 value
     * @param c Third uint256 value
     * @return The ABI encoded bytes of the three values
     */
    function encodeThreeUints(uint256 a, uint256 b, uint256 c) public pure returns (bytes memory) {
        // Your task: Implement this function using Yul (assembly)
        // The function should encode the three uint256 values according to the Ethereum ABI specifications
        // Each uint256 should be encoded in 32 bytes
        // Hint: Use mload, mstore, and the free memory pointer at 0x40
        
        bytes memory result;
        
        assembly {
            // Implement the encoding logic here
        }
        
        return result;
    }
} 