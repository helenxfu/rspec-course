RSpec.describe "nested hooks" do
  before(:context) do
    puts "outer before context"
  end
  before(:example) do
    puts "outer before example"
  end
  it "random example" do
    puts "example"
  end

  context "with condition A" do
    before(:context) do
      puts "inner before context"
    end
    before(:example) do
      puts "inner before example"
    end
    it "random inner example" do
      puts "inner example"
    end
    it "random inner example2" do
      puts "inner example2"
    end
  end
end

# KZEZEHZBEZBVE
# result
# outer before context
# outer before example
# example
# .inner before context
# outer before example
# inner before example
# inner example
# .outer before example
# inner before example
# inner example2
