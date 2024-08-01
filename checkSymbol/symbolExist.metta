 ; function to check if a given symbol exist in the tree or not
(= (symbol-exist $tree $symbol)
    ( case $tree (
            ( ($x $y $z) ( or (symbol-exist $x $symbol) (or (symbol-exist $y $symbol) (symbol-exist $z $symbol))))
            ( ($x $y) (or (symbol-exist $x $symbol) (symbol-exist $y $symbol)))
            ($x (if (== $x $symbol) 
             True 
             False))
        )

))
