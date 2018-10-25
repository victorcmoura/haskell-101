module Main (main) where

import MyAgenda

main = do
    putStrLn("Creating empty agenda")
    let myAgenda = Agenda {contacts = []}
    print(myAgenda)
    putStrLn("Adding victorcmoura")
    let myAgenda2 = addToAgenda (personName victorcmoura) (personAge victorcmoura) (personTelephone victorcmoura) myAgenda
    print(myAgenda2)
    putStrLn("Adding brunapinos")
    let myAgenda3 = addToAgenda (personName brunapinos) (personAge brunapinos) (personTelephone brunapinos) myAgenda2
    print(myAgenda3)
    putStrLn("Adding guiglacerda")
    let myAgenda4 = addToAgenda (personName guiglacerda) (personAge guiglacerda) (personTelephone guiglacerda) myAgenda3
    print(myAgenda4)