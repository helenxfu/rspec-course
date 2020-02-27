RSpec.describe Hash do
  # let(:subject) { Hash.new }

  it "should start off empty" do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
    subject[:some_key] = "some value"
    expect(subject.length).to eq(1)
  end
end
