Encoder = function Encoder(encoding) {
    this.encode = function (string) {
		var words = string.split(" ");
		return words.map(encoding.encodeWord).join(" ");
	};
};

ReverseEncoding = function ReverseEncoding() {
	this.encodeWord = function (word) {
		return word.split("").reverse().join("");
	};
};

DoubleEncoding = function DoubleEncoding() {
	this.encodeWord = function (word) {
		return word + word;
	};
};


