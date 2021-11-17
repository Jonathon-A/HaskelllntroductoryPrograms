--Insertion sort

--Insetion function
ins :: Int -> [Int] -> [Int]
ins x [] = [x]
ins x (y:ys)
	| x <= y = x:(y:ys)
	| otherwise = y:(ins x ys)

--Insetion sort
isort :: [Int] -> [Int]
isort [] = []
isort (x:xs) = ins x (isort xs)

--Insetion sort evaluation example
--	isort [3,9,2]
--	= ins 3 (isort [9,2])
--	= ins 3 (ins 9 (isort [2]))
--	= ins 3 (ins 9 (ins 2 (isort [ ])))
--	= ins 3 (ins 9 (ins 2 [ ]))
--	= ins 3 (ins 9 [2])
--	= ins 3 (2 : ins 9 [ ])
--	= ins 3 [2,9]
--	= 2 : ins 3 [9]
--	= 2 : [3,9]
--	= [2,3,9]


--Quick sort
qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort [ y | y<-xs , y<=x] ++ [x] ++ qsort [ y | y<-xs , y>x]