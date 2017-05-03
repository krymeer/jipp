-- xh - pierszy element listy
-- yh - drugi element listy
-- xyt - ogon listy (może być pusty)

split :: [a] -> ([a], [a])
split [] = ([], [])
split [x] = ([x], [])
split (xh:yh:xyt) = (xh:xt, yh:yt)
  where (xt, yt) = split xyt