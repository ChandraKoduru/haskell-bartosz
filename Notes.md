every function is an expression

equational reasoning -> replacing symbol with symbol definition (just like a
macro substitution)

:q -- quit
:l <file> -- load
:r -- reload
:i -- info
:t <symbol>

print :: Show a => a -> IO ()
putStr :: String -> IO ()
putStrLn :: String -> IO ()


" " (space) is very tight binding, function application e.g f a b  (apply f
consuming a and b)
$ - > weak binding and right assicative. Inverse of " " space

haskell has 10 levels of precedence

