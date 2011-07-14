require('./encoder')

describe("Reverse Encoding", function() {
  it("reverses each word in the input", function() {
    expect(new ReverseEncoder().encode("abcde 123")).toEqual("edcba 321");
  });
});

describe("Double Encoding", function() {
  it("repeats each word in the input", function() {
    expect(new DoubleEncoder().encode("abcde 123")).toEqual("abcdeabcde 123123");
  });
});
