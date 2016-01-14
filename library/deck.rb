class Deck
  def initialize()
    @suitarray = ["S", "D", "H", "C"]
    @rankarray = (1..10).to_a + ["K", "J", "Q", "A"]
  end

  def deal
    deck.pop
  end

  private

  def deck
    @deck ||= @suitarray.map do |suit|
      @rankarray.map { |value| Card.new(suit: suit, value: value ) }
    end.flatten.shuffle
  end
end
