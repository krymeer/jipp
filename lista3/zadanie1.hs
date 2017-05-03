scalarproduct :: Num a => [a] -> [a] -> a
scalarproduct l1 l2 = sum [x*y | (x, y) <- list] where list = zip l1 l2