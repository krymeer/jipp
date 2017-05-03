scalarproduct :: Num a => [a] -> [a] -> a
scalarproduct [] [] = 0
scalarproduct (xh:xt) [] = 0
scalarproduct [] (yh:yt) = 0
scalarproduct (xh:xt) (yh:yt) = xh*yh + scalarproduct xt yt