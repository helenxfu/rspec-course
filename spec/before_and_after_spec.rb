RSpec.describe "before and after hooks" do
  before(:context) do
    puts "before context"
  end
  after(:context) do
    puts "after context"
  end

  before(:example) do
    puts "before example"
  end
  after(:example) do
    puts "after example"
  end

  it "random example" do
    puts "example"
  end

  it "random example2" do
    puts "example2"
  end
end
