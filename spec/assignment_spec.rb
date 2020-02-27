RSpec.describe Array do
  subject { [1, 2] }
  it "should equal [1, 2]" do
    expect(subject).to eq([1, 2])
  end

  context "with one-liner syntax" do
    it { is_expected.to eq([1, 2]) }
  end
end
