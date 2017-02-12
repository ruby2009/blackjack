class Card

  include Comparable

  attr_accessor :suit, :face, :value

  def initialize(suit, face)
    @suit = suit
    @face = face
    @value = card_value(face)
  end

  def card_value(face)
    case
      when face.to_i != 0 then face.to_i
      when face == "A" then 11
      else 10
    end
  end

  def <=> (other)
    value <=> other.value
  end

  def to_s
    "a #{face} of #{suit}"
  end

end
