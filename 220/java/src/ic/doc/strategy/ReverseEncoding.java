package ic.doc.strategy;

import org.apache.commons.lang3.StringUtils;

public class ReverseEncoding implements Encoding {

    public String encodeWord(String word) {
        return StringUtils.reverse(word);
    }
}
