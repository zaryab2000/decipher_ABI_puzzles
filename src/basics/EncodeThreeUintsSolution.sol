// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


/**
 * @title EncodeThreeUintsSolution
 * @dev Solution to the EncodeThreeUints puzzle
 */
contract EncodeThreeUintsSolution {
    /**
     * @dev Encode three uint256 values according to ABI specs
     * @param a First uint256 value
     * @param b Second uint256 value
     * @param c Third uint256 value
     * @return The ABI encoded bytes of the three values
     */
    function encodeThreeUints(uint256 a, uint256 b, uint256 c) public pure returns (bytes memory) {
        bytes memory result;
        
        assembly {
            // Allocate memory for the result
            // Each uint256 takes 32 bytes, so we need 3 * 32 = 96 bytes
            result := mload(0x40) // Get free memory pointer
            
            // Store the length of the bytes array (96 bytes)
            mstore(result, 96)
            
            // Store the values at the correct positions
            // result + 32 (to skip the length field) + 0 = position for a
            mstore(add(result, 32), a)
            
            // result + 32 (to skip the length field) + 32 = position for b
            mstore(add(result, 64), b)
            
            // result + 32 (to skip the length field) + 64 = position for c
            mstore(add(result, 96), c)
            
            // Update the free memory pointer
            // result (pointer) + 32 (length) + 96 (data) = end of our allocation
            mstore(0x40, add(result, 128))
        }
        
        return result;
    }
} 