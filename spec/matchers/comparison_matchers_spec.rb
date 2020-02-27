RSpec.describe "comparison matchers" do
  it "allows for comparison with built-in ruby operators" do
    expect(10).to be > 3
    expect(1).to be >= 1
    expect(22).to be <= 44
  end

  describe 100 do
    it { is_expected.to be == 100 }
    it { is_expected.not_to be == 101 }
  end
end
