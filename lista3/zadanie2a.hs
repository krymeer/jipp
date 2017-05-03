splitAlpha :: [a] -> ([a], [a])
splitAlpha [] = ([], [])
splitAlpha (h:t) = (take m (h:t), drop (m-1) t)
  where
    m = if length(h:t) `mod` 2 > 0
      then 1 + length(h:t) `div` 2
      else length(h:t) `div` 2