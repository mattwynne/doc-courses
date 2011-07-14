package ic.doc.templatemethod;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

public abstract class Encoder {

    public String encode(String input) {
        List<String> results = new ArrayList<String>();
        String[] words = input.split(" ");
        for (String word : words) {
            results.add(encodeWord(word));
        }
        return StringUtils.join(results, " ");
    }

    protected abstract String encodeWord(String word);
}
