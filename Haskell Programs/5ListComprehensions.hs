--List comprehensions

--Format: [ element | element<-list, element condition]

--Doubles every element in the list
--g1 [3,5,7] = [6,10,14]
g1 :: [Int] -> [Int]
g1 xs = [ 2*n | n<-xs]

--List comprehensions with condition
--g [4,5,6] = [8,12]
g2 :: [Int] -> [Int]
g2 xs = [ 2*n | n<-xs, n`mod`2== 0]

--More complicated list comprehension function
g3 :: [Int] -> [Int]
g3 xs = [ 2*n | n<-xs++xs,n`mod`2== 0]++xs

--Ranges

--[m..n] = [m,m+1,m+2,...,n]
--[1..6] = [1,2,3,4,5,6]
--[1..] = [1,2,3,4,.....]
--['a'..'k'] = "abcdefghijk"

--n** = the “closest” number before n that is in the sequence
--aka ends list at closest number before n
--[m,p..n] = [m, m+(p-m), m+2(m-p), . . . ,n**]
--[4,6..13] = [4,6,8,10,12]
--[9,7..2] = [9,7,5,3]

--A list comprehension can have more than one generator
--Seperate generators for x and y - order of generators matter
-- [(x,y)| x<- [1,2,3], y<- [4,5]] = [(1,4), (1,5), (2,4), (2,5), (3,4), (3,5)]
-- [(x,y)| y<- [4,5], x<- [1,2,3]] = [(1,4),(2,4),(3,4),(1,5),(2,5),(3,5)]
-- [(x,y)| x<- [1..3], y<- [x..3]] = [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)]

-- returns list of add pairs where the first element in the pair is lesser than the second element in the pair
addOrdPairs :: [(Int,Int)] -> [Int]
addOrdPairs xs = [m+n | (m,n) <- xs, m < n ]

--Checks if all elements in list are even
allEven :: [Int] -> Bool
allEven xs = (xs == [x | x<-xs, x`mod`2== 0])

--Returns list of factors of an integer
factors:: Int -> [Int]
factors x = [n | n <-[1..x], x `mod` n == 0]

--Returns true if prime number
prime:: Int -> Bool
prime p = factors p == [1,p]

--Returns list of prime numbers between 1 and X
primes:: Int -> [Int]
primes x = [n | n <- [1..x], prime n]


--Patern matching using wildcards 
-- _ used as a wildcard
f :: Int -> Int -> Int
f x _ = x
