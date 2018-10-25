module SquaresAndBlocks(Square, Block, squareSideLength, squareArea, blockSquareList, blockLength, squareListArea, blockArea, s10, s11, s12, s13, lstSquares, b1) where

data Square = Square {
    sideLength :: Float
} deriving (Show)

data Block = Block {
    children :: [Square]
} deriving (Show)

squareSideLength :: Square -> Float
squareSideLength (Square {sideLength = l}) = l

squareArea :: Square -> Float
squareArea (Square {sideLength = l}) = l*l

blockSquareList :: Block -> [Square]
blockSquareList (Block {children = lstChld}) = lstChld

blockLength :: Block -> Int
blockLength (Block {children = lstChld}) = length lstChld

squareListArea :: [Square] -> Float
squareListArea lstSqr
    | (length lstSqr) == 0 = 0
    | (length lstSqr) == 1 = squareArea (head lstSqr)
    | otherwise = (squareArea (head lstSqr)) + (squareListArea (tail lstSqr))

blockArea :: Block -> Float
blockArea (Block {children = lstChld}) = (squareListArea lstChld)

s10 = Square {sideLength = 10.0}
s11 = Square {sideLength = 11.0}
s12 = Square {sideLength = 12.0}
s13 = Square {sideLength = 13.0}

lstSquares = [s10, s11, s12, s13]

b1 = Block {children = lstSquares}
