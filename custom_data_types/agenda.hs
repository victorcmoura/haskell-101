data Person = Person {
    name :: String,
    age :: Int,
    telephone :: String
} deriving (Show)

data Agenda = Agenda {
    contacts :: [Person]
} deriving (Show)

personName :: Person -> String
personName Person {name = pName, age = _, telephone = _} = pName

personAge :: Person -> Int
personAge Person {name = _, age = pAge, telephone = _} = pAge

personTelephone :: Person -> String
personTelephone Person {name = _, age = _, telephone = pTelephone} = pTelephone

addToAgenda :: String -> Int -> String -> Agenda -> Agenda
addToAgenda pName pAge pTelephone Agenda {contacts = currContacts} = 
    Agenda {contacts = (Person {name = pName, age = pAge, telephone = pTelephone}) : currContacts}

victorcmoura = Person {
    name = "Victor Moura",
    age = 21,
    telephone = "000 000 000"
}

brunapinos = Person {
    name = "Bruna Pinos",
    age = 21,
    telephone = "111 111 111"
}

guiglacerda = Person {
    name = "Guilherme Lacerda",
    age = 20,
    telephone = "222 222 222"
}

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
