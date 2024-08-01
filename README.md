# Tree Operations in MeTTa

This repository contains MeTTa functions for various binary tree operations:

1. **`max-depth`**: Calculates the maximum depth of a binary tree.
2. **`symbol-exist`**: Checks if a specific symbol exists in the tree.
3. **`count`**: Counts the occurrences of a specified symbol within the tree.

## Input Format

The binary tree is represented using a nested tuple-like structure in the following format:

- Each node is represented as a list with its value and its subtrees.
- The first element is the node's value.
- The second element is the left subtree.
- The third element is the right subtree.

### Example Input Expression

#### Simple Tree Example

`( a b c)`

Here:

- **`a`**: Root node of the tree.
- **`b`**: Left subtree (which can be another subtree or a leaf node).
- **`c`**: Right subtree (which can be another subtree or a leaf node).

#### Nested Tree Example

For a more complex tree:

`(a (b d e) c)`

Here:

- **`a`**: Root node.
- **`(b d e)`**: Left subtree where `b` is the root with left child `d` and right child `e`.
- **`c`**: Right subtree, which is just a leaf node `c`.

This structure can represent any binary tree, including complex nested trees.

## Test Cases

Max Depth: !(max-depth (a b (c (d f (g h)) e))) : Will return 5
Symbol Existence: !(symbol-exist (a b (c (e f (g h)) e)) e) : Will return True
Count Symbol Occurrences: !(count (a b (c (e f (g h)) e)) e) : Will return 2


## Reasoning

The reasoning for each function's correctness is provided in separate text files within the repository. The reasoning is structured using structural induction, explaining why the algorithms work correctly based on the structure of the input tree.