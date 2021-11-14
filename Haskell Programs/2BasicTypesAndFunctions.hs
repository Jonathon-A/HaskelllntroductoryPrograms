--Types
--Int – whole numbers with a limited range
--Integer – whole numbers with a larger range
--Bool – the Boolean values True and False
--Char – characters including capitals, lowercase, digits, and special characters like space, tab and newline
--Float – floating point fractional numbers of limited accuracy

--Below is type signiture
addone :: Int -> Int
--Below is function
addone n = n+1

square :: Int -> Int
square n = n * n

double :: Int -> Int
double n = n * 2

squaredoublesquare :: Int -> Int
squaredoublesquare n = square (double (square n)) 

divider :: Int -> Int -> Int
divider n m = n `div` m

modulus :: Int -> Int -> Int
modulus n m = n `mod` m

