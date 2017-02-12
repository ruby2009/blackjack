require 'minitest/autorun'
require_relative 'deck'

class DeckTest < MiniTest::Test

  def setup
    @tdeck = Deck.new
  end

  def test_a_deck_has_52_cards
    assert @tdeck.cards.length == 52
  end

  def test_a_deck_contains_13_of_each_suit
    assert @tdeck.cards.select{|card| card.suit == "Hearts"}.count == 13
  end

  def test_a_deck_contains_4_of_each_face_of_cards
    assert @tdeck.cards.select{|card| card.face == "4"}.count == 4
  end

  def test_a_deck_is_shuffled_on_creation
    refute Deck.new == Deck.new
  end

  def test_a_deck_can_be_drawn
    assert @tdeck.draw.is_a? Card
  end

  def test_once_a_card_is_drawn_it_has_one_less_card
    ddeck = Deck.new
    ddeck.draw
    assert_equal 51, ddeck.cards.length
  end

end
