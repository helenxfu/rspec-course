RSpec.describe "all matchers" do
  it "allows for aggregate checks" do
    [5, 7, 9].each do |val|
      expect(val).to be_odd
    end

    expect([5, 7, 9, 11]).to all(be_odd)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
