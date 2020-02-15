require('pry')
require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game.rb')
require_relative('../card.rb')

class TestCardGame < Minitest::Test

  def setup
    @card1 = Card.new('spades', 1)
    @card2 = Card.new('hearts', 5)
    @card3 = Card.new('diamonds', 7)
    @card4 = Card.new('clubs', 10)
    @cards = [@card1, @card2, @card3, @card4]

  end

  def test_checkforAce__true
    result = CardGame.checkforAce(@card1)
    assert_equal(true, result)
  end

  def test_checkforAce__false
    result = CardGame.checkforAce(@card2)
    assert_equal(false, result)
  end

  def test_highest_card
    result = CardGame.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 23", result)
  end



end
