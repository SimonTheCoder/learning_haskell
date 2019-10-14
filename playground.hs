-- While learning, we will need overwrite the functions in Prelude or other libs.
-- Add hiding below if needed.
import Prelude hiding (sum, (++))

-- A function calc sum of a list. 
sum [] = 0
sum (x:xs) = x + sum(xs)

-- (++)
[] ++ ys = ys
(x:xs) ++ ys = x:(xs ++ ys)

-- append elem to the end of a list.
append :: t-> [t]-> [t]
append elem list = list ++ [elem]

-- sqrt 1 to n, then sum
ss n = foldr (\x-> \y->x+y) 0 (map (\x->x*x) [1..n])

-- last, for string only
my_last_l x '\0' = x
my_last_l x y = y
my_last str = foldr my_last_l '\0' str 

-- init, for string only
my_init_f x "\0"="";my_init_f x y=x:y
my_init str = foldr init_f "\0" str
