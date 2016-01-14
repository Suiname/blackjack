class Hand
  def initialize(card1, card2)
    @hand = [card1, card2]
  end

  def value
    @value = 0
    @hand.each do |card|
      @value += card.value
    end
    @value
  end
end


# jsum528@gmail.com
