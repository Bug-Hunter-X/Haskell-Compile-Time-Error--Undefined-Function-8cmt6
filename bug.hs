This code attempts to use an undefined function `calculate`.

```haskell
main :: IO ()
main = do
  let result = calculate 10 20
  print result

calculate :: Int -> Int -> Int
calculate x y = x + y
```

The issue is that the `calculate` function is defined *after* it's called in `main`. Haskell evaluates code top-to-bottom, so it doesn't know about `calculate` when it reaches `main`. 