split :: [a] -> ([a], [a])
split list = (take half list, drop half list)
  where
    len = length list
    half = if even len
      then len `div` 2
      else 1 + len `div` 2