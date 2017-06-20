split :: [a] => ([a], [a])
split xs = (ys, zs)
  where {
    ys = [y | (y, k) <- zip xs [0..], k `mod` 2 == 0]; 
    zs = [z | (z, k) <- zip xs [0..], k `mod` 2 == 1]}