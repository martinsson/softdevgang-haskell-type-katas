module Game where

-- principles
-- * play with types
-- * no so interested in Haskell
-- * do not work on implementation


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
winnerOf (Hand p1 Rock) (Hand p2 Paper) = Winner(p1)
winnerOf (Hand p1 Paper) (Hand p2 Rock) = Winner(p2)
winnerOf _ _ = Draaw

-- find code that it does not compile...


-- retrospective:
-- * fun
-- * solved problem together makes it easier
-- * Haskell kind of cool, like the idea
-- * difficult to use Haskell, like C++
-- * we guess types get out of hand easily, what about readability?
-- * continue
-- * worked well in lunch break, easier than evening


-- do differently
-- * smaller steps with compiler, compile more often on smaller code
-- * later go for more complex Tic Tac Toe

