-- While learning, we will need overwrite the functions in Prelude or other libs.
-- Add hiding below if needed.
import Prelude hiding (sum, (++))

-- A function calc sum of a list. 
sum [] = 0
sum (x:xs) = x + sum(xs)

-- (++)
[] ++ ys = ys
(x:xs) ++ ys = x:(xs ++ ys)
