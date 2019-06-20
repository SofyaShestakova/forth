: collatc
dup >r
repeat
dup 1 > if
dup 2 % if
dup 3 * 1 +
else dup 2 / then
else 1 then
dup 1 = until
r> ;

: .until
>r
repeat
dup . ."  "
r@ =
until
cr r> drop ; 
( divide by 2 if is even or multiply by 3 plus 1 if is not even; repeat it until it goes to 1 )