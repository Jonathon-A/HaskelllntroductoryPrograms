--Local Definitions
--Undefined functions and variables definied in function
f :: Int -> Int -> Int
f x y
	| g x > h y = z
	| otherwise = g y
		where
		z = 2*y
		g,h :: Int -> Int
		g y = 3*y*x+2
		h y = 2*y+1

--Example: newconcat function
--Takes two lists of integers and concatenates two sublists of these lists of the
--same length and adds the remaining part of one of the lists to the end

newconcat :: [Int] -> [Int] -> [Int]
newconcat list1 list2
	= front ++ back
		where
		minlen = min(length list1) (length list2)
		front = take minlen list1 ++ take minlen list2
		back = drop minlen list1 ++ drop minlen list2