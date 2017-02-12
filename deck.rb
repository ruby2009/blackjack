require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = cards
    create_deck
    shuffle
  end

  def create_deck
    self.cards = []
    faces = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    suits = %w(Spades Hearts Diamonds Clubs)
    suits.each do |suit|
      faces.each do |card|
        cards << Card.new( suit , card )
      end
    end
  end

  def shuffle
    self.cards.shuffle!
  end

  def draw
    self.cards.shift
  end

  def dry?
    self.cards.empty?
  end
end
