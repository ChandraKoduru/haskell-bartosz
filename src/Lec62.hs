module Lec62 (
    runTJRun
    ) where

import Control.Monad.Reader

tom :: Reader String String
tom = do
        env <- ask
        return (env ++ " This is Tom.")

jerry :: Reader String String
jerry = do
          env <- ask
          return (env ++ " This is Jerry.")


tomAndJerry :: Reader String String
tomAndJerry = do
                t <- tom
                j <- jerry
                return (t ++ "\n" ++ j)

runTJRun :: String
runTJRun = (runReader tomAndJerry) " Who is this?"
