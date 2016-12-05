import Test.Hspec
import Game

main = hspec $ do
    describe "toto" $ do
        it "tata" $ do
            play Rock Scissors `shouldBe` Player1Won
            play Scissors Rock `shouldBe` Player2Won
--            play Player1Rock Player2Rock `shouldBe` Draw
--            play Player2Rock Player1Rock `shouldBe` Draw
--            play Player2Rock Player2Rock `shouldBe` Draw



--inputs
--- tada
--
--g