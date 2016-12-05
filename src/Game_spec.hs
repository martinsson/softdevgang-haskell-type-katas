import Test.Hspec
import Game

main = hspec $ do
    describe "Rock-Paper-Scissors" $ do
        it "simple sign enum" $ do
            play Rock Scissors `shouldBe` Player1Won
            play Scissors Rock `shouldBe` Player2Won

        it "keep track of player" $ do
            winnerOf (Hand Player1 Rock) (Hand Player2 Rock) `shouldBe` Draaw
            winnerOf (Hand Player1 Rock) (Hand Player2 Paper) `shouldBe` Winner(Player1)
            winnerOf (Hand Player1 Paper) (Hand Player2 Rock) `shouldBe` Winner(Player2)

        it "should not compile" $ do
            winnerOf (Hand Player2 Paper) (Hand Player2 Rock) `shouldBe` Winner(Player1)
