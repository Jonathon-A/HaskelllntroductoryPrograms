size :: Int
size = 12 + 13

square :: Int -> Int
square n = n*n


double :: Int -> Int
double n = 2*n


h :: Float -> Float 
h n = n/1.5


k :: Char -> Char 
k n = n

remainder :: Int -> Int
remainder n = n `mod` 5

--:t tell you the type signiture of whatever e.g.
--:t True 			True :: bool
--:t 'a'			'a' :: Char
--:t double			double :: Int -> Int
--:t (('r',False),('a',True)) 	(('r',False),('a',True)) :: ((Char,Bool),(Char,Bool)
--:t [('r',False),('d',True)]	[('r',False),('d',True)] :: [(Char,Bool)]