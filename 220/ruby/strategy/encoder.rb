class Encoder
  
  def initialize(algorithm)
    @algorithm = algorithm
  end

  def encode(input)
    input.split(' ').map { |word| @algorithm.encode_word(word) }.join(" ") 
  end
  
end

class ReverseEncoding
  
  def encode_word(word)
    word.reverse
  end
  
end

class DoublingEncoding
  
  def encode_word(word)
    word * 2
  end
  
end
