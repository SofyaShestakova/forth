: concat 
swap dup count >r over count r@ 
+ 1 + heap-alloc 
dup rot string-copy 
r> over >r + 
swap string-copy r> ;
( connect two lines into one ) 
