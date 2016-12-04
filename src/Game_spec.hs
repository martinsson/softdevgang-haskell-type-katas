import Test.Hspec
import Game

main = hspec $ do
    describe "toto" $ do
        it "tata" $ do
            play "Rock" `shouldBe` "Rock"