# The ABI Encoding Game

An interactive learning game for mastering ABI encoding and decoding in the Ethereum Virtual Machine.

## Overview

This project is an **interactive learning game** specifically designed for advanced Solidity developers who want to gain deep, hands-on mastery of **ABI encoding and decoding** in the Ethereum Virtual Machine.

Each level of the game is a standalone puzzle that challenges the player to write correct ABI encoding or decoding logic inside a Solidity function, guided by test-driven development.

## Project Structure

This repository is organized as follows:

- `src/` - Contains all puzzles divided by difficulty level
  - `basics/` - Basic level puzzles (Basic1st, Basic2nd, etc.)
  - `advance/` - Advanced level puzzles (Advance1st, Advance2nd, etc.)
  - `expert/` - Expert level puzzles (Expert1st, Expert2nd, etc.)
- `test/` - Contains test files for all puzzles with the same structure
- `solutions/` - Contains solution files (not committed to GitHub)

## How to Play

1. Clone this repository
2. Install [Foundry](https://book.getfoundry.sh/getting-started/installation) if you haven't already
3. Run `forge test` to verify the setup
4. Navigate to the puzzle files in the `src/` directory
5. Fill in the missing code in the designated areas
6. Run `forge test --match <PuzzleName>` to check if your solution works

## Puzzle Structure

Each puzzle consists of two files:
- A contract file in `src/` with a function that needs to be implemented
- A test file in `test/` that verifies your implementation

## Learning Path

The puzzles are organized in increasing order of difficulty:

1. **Basics**: Simple encoding of static types
2. **Dynamic Types**: Working with strings, arrays and complex types 
3. **Advanced**: Multi-dimensional arrays, nested structures
4. **Expert**: Function selectors, calldata manipulation, and low-level calls

## Contributing

Contributions are welcome! If you have ideas for new puzzles or improvements to existing ones, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## How to Use

1. Work on the puzzle files in the `src/` directory
2. Run the tests to check if your implementation is correct
3. Solutions can be stored in the `solutions/` directory for reference, but should not be committed to GitHub
