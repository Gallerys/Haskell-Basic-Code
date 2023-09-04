main :: IO ()
main = putStrLn "Hello, World!"


-- Function Definition
add :: Int -> Int -> Int
add x y = x + y

-- Pattern Matching
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)


-- List Manipulation
-- Calculate the sum of all elements in a list using recursion
sumList :: [Int] -> Int
sumList []     = 0
sumList (x:xs) = x + sumList xs

-- Map a function over a list
doubleList :: [Int] -> [Int]
doubleList []     = []
doubleList (x:xs) = (2 * x) : doubleList xs


-- Higher-Order Functions
-- Define a higher-order function that applies a function to every element in a list
map' :: (a -> b) -> [a] -> [b]
map' _ []     = []
map' f (x:xs) = f x : map' f xs

-- Use map' to double every element in a list
doubleList' :: [Int] -> [Int]
doubleList' = map' (* 2)


-- List Comprehensions
-- Generate a list of even numbers from 1 to 10
evenNumbers :: [Int]
evenNumbers = [x | x <- [1..10], x `mod` 2 == 0]

