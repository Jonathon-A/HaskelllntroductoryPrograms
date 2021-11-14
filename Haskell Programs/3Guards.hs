-- A guard is a Boolean expression used to express various cases in the definition of a function. 
biggest:: Int -> Int -> Int
biggest x y
  | x >= y = x
  | otherwise = y

-- CONDITIONAL EXPRESSIONS
g :: String -> String
g x
	= if x == "Arsenal" then
		"Good team"
	else if x == "Man U" then
		"Average team"
	else if x == "Leic" then
		"Great team"
	else "Not so good"


-- NESTED CONDITIONAL EXPRESSIONS
f :: String -> Int -> Int -> String -> String
f sex height weight haircolour =
	if sex == "male" then
		if height < 160 then
			"You are a bit short"
		else if weight < 70 then
			"You are thin"
		else if weight < 100 then
			"You are normal"
		else
		"You are overweight"
	else if sex == "female" then
		if (height >200 && weight > 120) then
			"You have a large frame"
		else if (height == 160 && weight == 50) then
			"Physically average"++
		if haircolour /= "blonde" then 
			" "
		else
			" but clever"
		else
			"You are normal"
		else
			"You are unusual" 