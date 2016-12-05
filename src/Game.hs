module Game where

data Sign = Rock | Scissors
data Result = Player1Won | Player2Won deriving (Eq, Show)

play :: Sign -> Sign -> Result
play Rock Scissors = Player1Won
play Scissors Rock = Player2Won

