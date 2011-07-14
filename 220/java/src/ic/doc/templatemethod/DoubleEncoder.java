package ic.doc.templatemethod;

public class DoubleEncoder extends Encoder {

    @Override
    protected String encodeWord(String word) {
        return word + word;
    }
}
