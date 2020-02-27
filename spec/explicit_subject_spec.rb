RSpec.describe Hash do
  subject(:bob) do
    { a: 1, b: 2 }
  end
  # similar to, no shorthand
  # let(:bob) { { a: 1, b: 2 } }

  it "has two key value pair" do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe "nested example" do
    it "has two key value pair" do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end
