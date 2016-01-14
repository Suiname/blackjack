require_relative '../library/hand'

describe Hand do
  describe '#value' do
    it 'adds the value of your cards' do
      card1 = Card.new(value: 5)
      card2 = Card.new(value: 9)
      hand = Hand.new(card1, card2)

      expect(hand.value).to eq 14
    end
  end
end
