apnd_to_head x lst = x : lst
apnd_to_tail x lst = lst ++ [x]

prnt_head_to_tail [] = do
    putStrLn("")
prnt_head_to_tail lst = do
    putStr((show (head lst)) ++ " ")
    prnt_head_to_tail(tail lst)

prtty_prnt_tail_to_head lst = do
    prnt_tail_to_head lst
    putStrLn("")

prnt_tail_to_head lst
    | lst == [] = return()
    | otherwise = do
        prnt_tail_to_head(tail lst)
        putStr(show (head lst) ++ " ")

remove x lst
    | lst == [] = lst
    | x == head lst = tail lst
    | otherwise = (head lst) : (remove x (tail lst))

-- Insertion sort
insert_single_elem_lst x lst
    | x > (head lst) = lst ++ [x]
    | otherwise = x : lst

insert_sorted x lst
    | (length lst) == 0 = [x]
    | (length lst) == 1 = insert_single_elem_lst x lst
    | x < head lst = x : lst
    | x < (head (tail lst)) && x > (head lst) = (head lst) : x : (tail lst)
    | otherwise = (head lst) : insert_sorted x (tail lst)

main = do
    putStrLn("Appending 5 on head of [4, 3, 2, 1]:")
    print(apnd_to_head 5 [4, 3, 2, 1])

    putStrLn("Appending 5 to the tail of [1, 2, 3, 4]:")
    print(apnd_to_tail 5 [4, 3, 2, 1])

    putStrLn("Printing [1, 2, 3, 4, 5] recursively:")
    prnt_head_to_tail [1, 2, 3, 4, 5]

    putStrLn("Printing [1, 2, 3, 4, 5] backwards:")
    prtty_prnt_tail_to_head [1, 2, 3, 4, 5]

    putStrLn("Removing 2 from [1, 2, 3, 4, 5]:")
    print(remove 2 [1, 2, 3, 4, 5])

    putStrLn("Inserting 7 into [1, 2, 3, 4]:")
    print(insert_sorted 7 [1, 2, 3, 4])

    putStrLn("Inserting 7 into [1, 2, 3, 4, 5, 6, 8, 9]:")
    print(insert_sorted 7 [1, 2, 3, 4, 5, 6, 8, 9])

    putStrLn("Inserting 7 into [8, 9]:")
    print(insert_sorted 7 [8, 9])