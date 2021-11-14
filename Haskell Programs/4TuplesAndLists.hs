--Tuples (uses () )
--Must have a finite arity (finite number of components)
--Items of tuples may have different types
--Tuples have a fixed number of items

tuple :: (Char, (Bool, Char))
tuple = ('a', (False, 'b'))

--List (uses [] )
--Lists can and generally do expand (does not have a finite arity)
--items of a list must have the same type
--lists have a variable number of items

list :: [(Char, Bool)]
list = [('a', False), ('b', True)]

--Tuple containing lists

tuplelist :: ([Char], [Bool])
tuplelist  = (['a', 'b'] , [False, True])
