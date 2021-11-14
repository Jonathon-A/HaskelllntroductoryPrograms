--Primitive Recursion Over Lists example

sums :: [Int] -> Int
sums [] = 0
sums (x:xs) = x + sum xs

-- Evaluation:
-- sum [3,2,7,5]
-- = 3 + sum [2,7,5]
-- = 3 + (2 + sum [7,5])
-- = 3 + (2 + (7 + sum [5])
-- = 3 + (2 + (7 + (5 + sum [])))
-- = 3 + (2 + (7 + (5 + 0)))
-- = 17
-- Each evaluation of sum [..] is as a result of a pattern match

productlist :: [Int] -> Int
productlist [] = 1
productlist (x:xs) = x * product xs

newlength :: [Int] -> Int
newlength [] = 0
newlength (_:xs) = 1 + newlength xs

newreverse :: [Int] -> [Int]
newreverse [] = []
newreverse (x:xs) = (newreverse xs) ++ [x]


--Repeated variables in patternss

-- A program that checks if an Int is an element of an Int list
element :: Int -> [Int] -> Bool
element x [] = False
element x (y:ys) = (x==y)||(element x ys)
