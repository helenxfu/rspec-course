RSpec.describe "not_to method" do
  subject { 5 }
  it "checks for the inverse of a matcher" do
    expect(5).not_to eql(10)
    expect(subject).to equal(5)
    expect(5).to equal(5)
    expect([1, 2, 3]).not_to equal([1, 2, 3])
    expect([1, 2, 3]).not_to be_empty
    expect(nil).not_to be_truthy
    expect(5).not_to respond_to(:length)
    expect { 11 / 3 }.not_to raise_error
  end
end
