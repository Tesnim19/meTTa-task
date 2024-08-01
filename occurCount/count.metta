 ; function that counts how many times a given symbol occurs
(= (count $tree $symbol)
    ( case $tree (
            ( ($x $y $z) ( + (count $x $symbol) (+ (count $y $symbol) (count $z $symbol)) ))
            ( ($x $y) (+ (count $x $symbol) (count $y $symbol)))
            ($x (if (== $x $symbol) 1 0))
        )
))
