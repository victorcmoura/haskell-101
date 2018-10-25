module Main(main) where

import SquaresAndBlocks

main = do
    putStrLn("Getting s10 sideLength:")
    print(squareSideLength s10)

    putStrLn("Getting s10 area:")
    print(squareArea s10)

    putStrLn("Getting b1 blockSquareList:")
    print(blockSquareList b1)

    putStrLn("Getting b1 blockLength:")
    print(blockLength b1)

    putStrLn("Getting b1 total area:")
    print(blockArea b1)