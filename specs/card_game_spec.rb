require("minitest/autorun")
require("minitest/rg")

require_relative("../card_game")

class CardGameTest < MiniTest::Test

  def setup
    @card1 = Card.new("Diamonds", 9)
    @card2 = Card.new("Ace", 1)
    @card3 = Card.new("Hearts", 2)
    @card_game = CardGame.new()
    @cards = [@card1, @card2, @card3]
  end

  def test_check_for_ace()
    assert_equal(false, @card_game.check_for_ace(@card1))
    assert_equal(true, @card_game.check_for_ace(@card2))
    assert_equal(false, @card_game.check_for_ace(@card3))
  end

  #Assumes ace is low
  def test_highest_card()
    assert_equal(@card1, @card_game.highest_card(@card1, @card2))
    assert_equal(@card1, @card_game.highest_card(@card2, @card1))
  end

  def test_cards_total()
    assert_equal("You have a total of 12",CardGame.cards_total(@cards))
  end

end
