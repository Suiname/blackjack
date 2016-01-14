require_relative '../library/deck'

describe Deck do
  let(:deck) { Deck.new }

  describe '#deal' do
    it 'returns a deal card' do
      card = deck.deal
      expect(card.class).to eq Card
    end

    it 'returns a card with a value between 1 and 11' do
      card = deck.deal
      expect((1..11).to_a).to include card.value
    end

    it 'returns a card with a suit' do
      card = deck.deal
      expect(["S", "D", "H", "C"]).to include card.suit
    end
  end
end
