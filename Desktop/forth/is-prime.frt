: abs dup 0 < if -1 * then ;
: is-prime
dup 1 > if
 dup 2 = not if
 dup 2 % abs if
 1
 repeat
 2 +
 2dup 2dup dup * >=
 -rot % land not ( i+=2; until N < i^2 && N % i != 0 )
 until
 dup * <
 else drop 0 then
 else drop 1 then
else drop 0 then . ;
( 1 if is prime, 0 if is not prime )

: new-cell
 is-prime 8 allot swap over ! . ;
( return address of cell with result of last function )
