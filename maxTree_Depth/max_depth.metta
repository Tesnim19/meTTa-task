 ; function for returning the largest number
(= (max $x $y)
    (if (> $x $y) $x $y)
)

 ; function to calculate the maximum depth of a binary tree
(= (max-depth $tree)
    ( case $tree (
            ( ($x $y $z) ( + 1 (max (max-depth $y) (max-depth $z)) )) ; if tree has two subtrees
            ( ($x $y) (+ 1 (max-depth $y))) ; if tree has only 1 subtree
            ($x 1) ; if tree has only a root node
        )
))
