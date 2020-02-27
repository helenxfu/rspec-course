RSpec.describe Array do
  it "starts at length 0" do
    expect(subject.length).to eq(0)
    subject.push("aaa")
    expect(subject.length).to eq(1)
  end
end
