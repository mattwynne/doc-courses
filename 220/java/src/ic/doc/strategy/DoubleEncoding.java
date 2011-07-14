package ic.doc.strategy;

public class DoubleEncoding implements Encoding {

    public String encodeWord(String word) {
        return word + word;
    }

}