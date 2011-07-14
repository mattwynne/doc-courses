package ic.doc.strategy;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

public class Encoder {
    
    private final Encoding encoding;

    public Encoder(Encoding encoding) {
        this.encoding = encoding;
    }

    public String encode(String input) {
        List<String> results = new ArrayList<String>();
        String[] words = input.split(" ");
        for (String word : words) {
            results.add(encoding.encodeWord(word));
        }
        return StringUtils.join(results, " ");
    }
}
