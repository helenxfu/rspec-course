RSpec.describe "a random double" do
  it "only allows defined methods to be invoked" do
    # stuntman = double("Hero", fall_off_ladder: "Ouch", light_on_fire: true)

    # expect(stuntman.fall_off_ladder).to eq("Ouch")
    # expect(stuntman.light_on_fire).to eq(true)

    stuntman = double("Hero")
    # allow(stuntman).to receive(:fall_off_ladder).and_return("Ouch")
    # expect(stuntman.fall_off_ladder).to eq("Ouch")

    allow(stuntman).to receive_messages(fall_off_ladder: "Ouch", light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eq(true)
  end
end

RSpec.describe "doubles" do
  it "tests the student's knowledge of the course's content" do
    db = double("Database Connection", connect: true, disconnect: "Goodbye")
    expect(db.connect).to be_truthy
    expect(db.disconnect).to eq("Goodbye")
    fs = double("File System")
    allow(fs).to receive_messages(read: "Romeo and Juliet", write: false)
    expect(fs.read).to eq("Romeo and Juliet")
    expect(fs.write).to be_falsy
  end
end
