class Encoder
  
  def encode(input)
    input.split(' ').map { |word| encode_word(word) }.join(" ") 
  end
  
end

class ReverseEncoder < Encoder
  
  def encode_word(word)
    word.reverse
  end
  
end

class DoublingEncoder < Encoder
  
  def encode_word(word)
    word * 2
  end
  
end
