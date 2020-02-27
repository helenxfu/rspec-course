class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before do
  #   # before(:example) do
  #   @card = Card.new("Ace", "Spades")
  # end

  # def card
  #   Card.new("Ace", "Spades")
  # end

  let(:card) { Card.new("Ace", "Spades") }

  it "has a rank & change rank" do
    # card = Card.new("Ace", "Spades")
    expect(card.rank).to eq("Ace")
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")
  end

  it "has a suit" do
    # card = Card.new("Ace", "Spades")
    expect(card.suit).to eq("Spades")
  end

  it "has a custom error message" do
    comparison = "Spade"
    expect(card.suit).to eq(comparison), "expected #{comparison}, got #{card.suit}"
  end
end
