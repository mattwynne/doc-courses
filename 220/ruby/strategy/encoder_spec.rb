require './encoder'

describe ReverseEncoding do
  it "reverses each word in the input" do
    encoder = Encoder.new(ReverseEncoding.new)
    encoder.encode("abcde 123").should == "edcba 321" 
  end
end

describe DoublingEncoding do
  it "repeats each word in the input" do
    encoder = Encoder.new(DoublingEncoding.new)
    encoder.encode("abcde 123").should == "abcdeabcde 123123" 
  end
end