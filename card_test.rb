require 'minitest/autorun'
require_relative 'card'

class CardTest < MiniTest::Test

  def setup
    @tcard = Card.new("Spades", "A")
  end

  def test_card_has_suit
    assert @tcard.suit
  end

  def test_card_has_face
    assert @tcard.face
  end
  #
  def test_card_has_value
    assert @tcard.value > 1
  end
  #
  def test_ace_value
    @tcard = Card.new("Spades", "A")
    assert @tcard.value == 11
  end
  #
  def test_king_value
    @tcard = Card.new("Spades", "K")
    assert @tcard.value == 10
  end
  #
  def test_queen_value
    @tcard = Card.new("Spades", "Q")
    assert @tcard.value == 10
  end
  #
  def test_jack_value
    @tcard = Card.new("Spades", "J")
    assert @tcard.value == 10
  end

  # def test_10_value_cards
  #   value_10 = %w(J Q K)
  #   assert value_10.map {|card| Card.new("Spades", card).value == 10}
  # end

  def test_cards_can_be_compared
    card1 = Card.new("Spades", "J")
    card2 = Card.new("Spades", "4")
    assert card1 > card2
  end

end
