-- Functions can call themselves
fac :: Int -> Int
fac n
	| n==0 = 1
	| n>0 = fac (n-1) * n
	| otherwise = 0

-- fac 3
-- = 3 * (fac (3-1))
-- = 3 * (fac 2)
-- = 3 * (2 * (fac (2-1)))
-- = 3 * (2 * (fac 1)
-- = 3 * (2 * (1 * (fac (1-1))))
-- = 3 * (2 * (1 * (fac 0)))
-- = 3 * (2 * (1 * (1)))
-- = 6

twopower :: Int -> Int
twopower n
	| n > 0 = 2 * twopower (n-1)
	| otherwise = 1
	
power2:: Int -> Int
power2 n
	| n==0 = 1
	| otherwise = 2* (power2 (n-1))

sumdown:: Int -> Int
sumdown n
	| n > 0 = n + sumdown (n-1)
	|otherwise = 0

--NON-TERMINATION
noterminate :: Int -> Int
noterminate n = fac (n-1) * n
