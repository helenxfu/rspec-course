class Person
  def a(seconds)
    sleep(seconds)
    "Hello"
  end
end

RSpec.describe Person do
  describe "regular double" do
    it "can implement any method" do
      person = double(a: "Hi", b: 20)
      expect(person.a).to eq("Hi")
    end
  end

  describe "instance double" do
    it "can implement methods that are defined on the class" do
      # person = instance_double(Person, a: "Ellohay")
      person = instance_double(Person)
      allow(person).to receive(:a).with(3).and_return("Hey")
      expect(person.a(3)).to eq("Hey")
    end
  end
end
