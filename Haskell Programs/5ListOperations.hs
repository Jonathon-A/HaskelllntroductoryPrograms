--list functions

-- : adds an elements
-- The added element has to be the same type as the list e.g.
--3:[3,2] = [3,3,2]
--'a':['c','a'] = ['a','c','a']
--[1]:[[2],[2]] = [[1],[2],[2]]
--[1]:[[1,2],[3]] = [[1],[1,2],[3]]

-- !! n returns the element at position n in the list e.g.
-- [1,2,3,4,5]!!3 = 4
-- [14,7,3]!!1 = 7

-- ++ concates two lists together 
-- The first list has to be the same type as the  secondlist e.g.
-- [1,5,5]++[4,3] = [1,5,5,4,3]

-- length returns the legnth of the list e.g.
-- length [1,2,4,5] = 4
-- length [[1,2,4,5]] = 1

-- concat concatenates a list of lists into a single list e.g.
-- concat [[2,3],[ ],[4]] = [2,3,4]

-- head returns the first element of a list e.g.
-- head [4,5,6,7] = 4

-- last returns the last element of a list e.g.
-- last [4,5,6,7] = 7

-- tail returns the list without the first element e.g.
-- tail [4,5,6,7] = [5,6,7]

-- init returns the list without the last element e.g.
-- init[4,5,6,7] = [4,5,6]

-- take takes a positive integer n and returns the first n elements e.g.
-- take 2 [4,5,6,7,8] = [4,5]

-- drop removes the first n elements e.g.
-- drop 2 [4,5,6,7,8] = [6,7,8]