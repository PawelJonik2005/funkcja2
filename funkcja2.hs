myIterate :: (a -> a) -> a -> [a]
myIterate f x = x : myIterate f (f x)
myTake :: Int -> [a] -> [a]
myTake 0 _      = []
myTake n (x:xs) = x : myTake (n-1) xs

main :: IO ()
main = do
  let result = myTake 10 $ myIterate (+1) 1
  print result
