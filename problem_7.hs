
-- This is a very slow implementation
sieve :: [Int] -> [Int]
sieve (p:ps) = p : sieve [x | x <- ps, x `mod` p > 0]

primes :: [Int]
primes = sieve [2..]

main :: IO ()
main = do
    putStrLn "----- Problem 7 -----"
    putStrLn (show (primes !! 10000))


    
