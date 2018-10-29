module Main (main) where

import SumOfNumbers

main = do
    let myNumber = MyNumber {value = 2}
    let myNumber2 = MyNumber {value = 10}
    printResult (addNumbers myNumber myNumber2)
    