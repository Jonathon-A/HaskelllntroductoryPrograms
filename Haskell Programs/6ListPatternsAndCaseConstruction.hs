--Zip pairs successive elements from two existing lists until either or both lists are exhausted
--zip ['a', 'b', 'c'] [1,2,3] => [(‘a’,1), (‘b’,2), (‘c’,3)]
--zip ['a', 'b', 'c'] [1,2,3,4,5] => [('a',1),('b',2),('c',3)]
--zip ['a', 'b', 'c', 'd'] [1,2,3] => [('a',1),('b',2),('c',3)] 

pairs:: [Int] -> [(Int,Int)]
pairs xs = zip xs (tail xs)

count:: Char -> String -> Int
count chr str = length[n | n <- str , n == chr]


--Sequential pattern matching

f :: [Int] -> Int
f (x : (1 : xs)) = x --If the second element is 1 then returns the first element
f (4 : (y : xs)) = y --Else if the first element if 4 then returns the second elements
f (x : (y : xs)) = 0 --Else (If the first element is not 4 and the second element is not 1) then returns 0 

g :: [Int] -> Int
g (4 : (y : xs)) = y --If the first element if 4 then returns the second elements
g (x : (1 : xs)) = x --Else if the second element is 1 then returns the first element
g (x : (y : xs)) = 0 --Else (If the first element is not 4 and the second element is not 1) then returns 0


--Pattern matching example

firstword :: [String] -> String
firstword [] = "no first word"
firstword (x : xs) = x

--Case construction examples

firstword2 xs
	= case xs of
		[] -> "no first word"
		(x:_) -> x


firsteven :: [Int] -> Int
firsteven nn
	= case nn of
		[] -> 0
		_ -> head([n | n <- nn, n `mod` 2 == 0])