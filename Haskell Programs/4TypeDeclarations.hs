--Type declarations can be used to make other types easier to read
--Types must start with capital letter

type Pos= (Int,Int)

origin :: Pos
origin = (0,0)

left :: Pos -> Pos
left (x,y) = (x-1,y)

--Type definitions can also have parameters

type Pair a = (a,a)

mult:: Pair Int -> Int
mult (m,n) = m*n

copy :: a -> Pair a
copy x = (x,x)

--Type declarations can be nested
--they cannot be recursive

type Trans = Pos -> Pos

--Type declaration examples

type Vector = (Float, Float, Float)
type Plane = (Vector, Vector, Vector)

--Pattern matching
--Input is matched to pattern

addPair :: (Int,Int) -> Int
addPair (x,y) = x+y

shift :: ((Int,Int),Int) -> (Int,(Int,Int))
shift ((x,y),z) = (x,(y,z))

--Selector funtions
--fst returns first element in pair
--fst (x,y) = x
--snd returns second element in pair
--snd (x,y) = y

