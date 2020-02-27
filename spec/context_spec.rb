RSpec.describe "#even? method" do
  describe "even number" do
    it "should return true" do
      expect(4.even?).to eq(true)
    end
  end

  describe "odd number" do
    it "should return false" do
      expect(5.even?).to eq(false)
    end
  end
end
