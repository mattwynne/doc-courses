Encoder = function Encoder() {
	this.encode = function(string) {
		return string.split(" ").map(this.encodeWord).join(" ");
	};
};

ReverseEncoder = function ReverseEncoder() {}
ReverseEncoder.prototype = new Encoder();
ReverseEncoder.prototype.encodeWord = function(word) {
	return word.split("").reverse().join("");
};

DoubleEncoder = function DoubleEncoder() {
	this.encodeWord = function(word) {
		return word + word;
	};
};
DoubleEncoder.prototype = new Encoder();