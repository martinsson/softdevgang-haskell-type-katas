module Game where

data Sign = Rock | Scissors | Paper deriving (Show, Eq)
data Result = Player1Won | Player2Won | Draw deriving (Eq, Show)

play :: Sign -> Sign -> Result
play Rock Scissors = Player1Won
play Scissors Rock = Player2Won
-- skip further combinations, nothing new here


-- thoughts on correctness using types:
-- 1st level of correctness: input/output only of certain types
-- 2nd level of correctness: behaviour/invariants in type system

data Player = Player1 | Player2 deriving (Show, Eq)

data Hand = Hand {p :: Player, s :: Sign} deriving (Show, Eq)

data Winner = Draaw | Winner Player deriving (Show, Eq)

winnerOf :: Hand -> Hand -> Winner
winnerOf _ _ = Draaw
