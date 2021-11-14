--Standard operators
{-
•	>   greater than (and not equal to) 
•	>= greater than or equal to 
•	== equal to 
•	/= not equal to 
•	<= less than or equal to 
•	< less than (and not equal to)
-}

--Boolean operators
{-
•	&&     logical and
•	||       logical or
•	not    logical not
-}

operatorexample :: Int -> Int -> Int -> Bool
operatorexample a b c = a > b && b /= c