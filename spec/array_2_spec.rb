RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it "length can change" do
    expect(sally.length).to eq(2)
    sally.pop()
    expect(sally.length).to eq(1)
  end

  it "prove that examples are independent" do
    expect(subject).to eq([1, 2])
  end
end
