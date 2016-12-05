import Test.Hspec
import Game

main = hspec $ do
    describe "toto" $ do
        it "tata" $ do

            play Rock Scissors `shouldBe` Player1Won
            play Scissors Rock `shouldBe` Player2Won

            winnerOf ((Hand Player1) Rock) ((Hand Player2) Rock) `shouldBe` Draaw
--            winnerOf Hand(Player1, Rock) Hand(Player2, Paper) `shouldBe` Winner(Player2)
