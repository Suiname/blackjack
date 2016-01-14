require_relative '../library/card'

describe Card do
  describe '#value' do
    it 'returns value of card' do
      card = Card.new(value: 2)
      expect(card.value).to eq 2
    end

    it 'returns nil if no value' do
      card = Card.new
      expect(card.value).to eq nil
    end

    describe 'the card is a face card' do
      it 'returns a value of 10 if King' do
        card = Card.new(value: "K")
        expect(card.value).to eq 10
      end

      it 'returns a value of 10 if Queen' do
        card = Card.new(value: "Q")
        expect(card.value).to eq 10
      end

      it 'returns a value of 10 if Jack' do
        card = Card.new(value: "J")
        expect(card.value).to eq 10
      end

      it 'returns a value of 11 if Ace' do
        card = Card.new(value: "A")
        expect(card.value).to eq 11
      end
    end
  end

  describe '#suit' do
    it 'returns "S" for spade' do
      card = Card.new(suit: "S")
      expect(card.suit).to eq "S"
    end
  end
end
