RSpec.describe "include matcher" do
  describe "hot chocolate" do
    it "checks for substring inclusion" do
      expect(subject).to include("hot")
      expect(subject).to include("choco")
    end

    it { is_expected.to include("late") }
  end

  describe [10, 20, 30] do
    it "checks for inclusion in array regardless of order" do
      expect(subject).to include(30, 20)
    end

    it { is_expected.to include(20) }
  end

  describe ({ a: 1, b: 2, c: 3 }) do
    it "can check for key existence" do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :c)
    end

    it { is_expected.to include(:c, :a) }
  end
end
