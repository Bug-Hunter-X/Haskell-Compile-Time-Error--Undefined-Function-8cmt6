To fix this, ensure that functions are defined before they're used.  Reordering the code solves the issue.

```haskell
calculate :: Int -> Int -> Int
calculate x y = x + y

main :: IO ()
main = do
  let result = calculate 10 20
  print result
```

Now, the `calculate` function is defined before `main` uses it, and the code compiles and runs correctly.