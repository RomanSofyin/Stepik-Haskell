module Fibonacci where

fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n == (-1) = 1
            | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
            | n < 0 = (-1)^((-n)+1) * fibonacci (-n)


{-

factorial4 n | n == 0 = 0
             | n < 0  = error "arg must be >= 0"
             | n > 0  = n * factorial4 (n - 1)

---------------------------------------------------

long factorial4 (int n) {
   long acc = 1;
   while (n > 1)
      acc *= n--;
   return acc;
}

factorial5 n | n >= 0    = helper 1 n
             | otherwise = error "arg must be >= 0"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)
-}

{-
long fibonacci1 (int n) {
   if i == 0 then return 0
   if i == 1 then return 1
   
   int prev = 0
   int curr = 1
   int x;
   int i = 2
   while(i++ <= n) {
      x = curr;
	  curr = prev + curr
	  prev = x	  
   }
   return curr;
}
-}

fibonacci1 :: Integer -> Integer
fibonacci1 n | n == 0 = 0
             | n == 1 = 1 
             | n > 0  = helper1 0 1 n
             | n < 0  = (-1)^((-n)+1) * helper1 0 1 (-n) 

helper1 prev curr 0 = prev
helper1 prev curr n = helper1 (curr) (prev + curr) (n - 1)
