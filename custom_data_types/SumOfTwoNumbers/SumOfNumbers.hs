module SumOfNumbers(MyNumber (..), addNumbers, printResult) where

data MyNumber = MyNumber {
    value :: Int
} deriving(Show)

addNumbers :: MyNumber -> MyNumber -> MyNumber
addNumbers (MyNumber {value = n1}) (MyNumber {value = n2}) = (MyNumber {value = (n1+n2)})

printResult :: MyNumber -> IO ()
printResult (MyNumber {value = v}) = print(v)