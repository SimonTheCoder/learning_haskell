-- While learning, we will need overwrite the functions in Prelude or other libs.
-- Add hiding below if needed.
import Prelude hiding (sum, (++))

-- A function calc sum of a list. 
sum [] = 0
sum (x:xs) = x + sum(xs)

-- (++)
[] ++ ys = ys
(x:xs) ++ ys = x:(xs ++ ys)

-- sqrt 1 to n, then sum
ss n = foldr (\x-> \y->x+y) 0 (map (\x->x*x) [1..n])

-- last
last_l x '\0' = x
last_l x y = y
last str = foldr last_l '\0' str 
