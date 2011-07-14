package ic.doc.templatemethod;

import org.apache.commons.lang3.StringUtils;

public class ReverseEncoder extends Encoder {

    @Override
    public String encodeWord(String word) {
        return StringUtils.reverse(word);
    }
}
