### Reasoning for Symbol Existence Check 

**Base Case**: The function checks if the symbol matches the root of the tree `($x)`. It returns `True` if `($x == $symbol)`, otherwise `False`.

**Inductive Hypothesis**: Assume the function `symbol-exist` correctly determines if a symbol exists in any binary tree of size `n`.

**Inductive Step**: 
- For a tree with two children `($x $y $z)`, the function recursively checks each subtree and the root. It uses logical `or` to combine the results:
  - `symbol-exist $x $symbol`: Checks the left subtree.
  - `symbol-exist $y $symbol`: Checks the right subtree.
  - `symbol-exist $z $symbol`: Checks the additional subtree or the root node itself.
  The presence of `or` ensures that if the symbol exists in any part of the tree, the function returns `True`.
- For a tree with one child `($x $y)`, the function similarly checks both the child and the root using logical `or`.

**Conclusion**: By structural induction, the `symbol-exist` function guarantees that it will correctly identify whether a symbol is present in any binary tree, traversing the tree's structure and returning `True` upon finding the symbol, otherwise `False`.
