require './encoder'

describe ReverseEncoder do
  it "reverses each word in the input" do
    encoder = ReverseEncoder.new
    encoder.encode("abcde 123").should == "edcba 321" 
  end
end

describe DoublingEncoder do
  it "repeats each word in the input" do
    encoder = DoublingEncoder.new
    encoder.encode("abcde 123").should == "abcdeabcde 123123" 
  end
end