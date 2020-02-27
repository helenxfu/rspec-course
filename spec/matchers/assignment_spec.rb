RSpec.describe "assignment" do
  it "expect({}.empty?).to be(true) alternate" do
    expect({}).to be_empty
  end

  it "every element in the array [10, 20, 30] is even" do
    expect([10, 20, 30]).to all(be_even)
  end

  it "[0, 1, 2] is greater than or equal to 0" do
    expect([0, 1, 2]).to all(be >= 0)
  end
end

RSpec.describe "assignment2: compound expectation" do
  it 'asserts the string firetruck starts with the substring "fire" and ends with the substring "truck"' do
    expect("firetruck").to start_with("fire").and end_with("truck")
  end

  it "asserts that the number 20 is even and that it responds to the times method" do
    expect(20).to be_even.and respond_to(:times)
  end

  it " asserts array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15" do
    expect([4, 8, 15, 16, 23, 42]).to include(42).and start_with(4, 8, 15)
  end
end
