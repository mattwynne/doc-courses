package ic.doc.strategy;

import ic.doc.templatemethod.DoubleEncoder;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class EncoderTest {

    @Test
    public void reverseEncodingReversesEachWordInTheInput() {
        assertThat(new Encoder(new ReverseEncoding()).encode("abcde 123"), is("edcba 321"));
    }

    @Test
    public void doubleEncodingRepeatsEachWordInTheInput() {
         assertThat(new Encoder(new DoubleEncoding()).encode("abcde 123"), is("abcdeabcde 123123"));
    }
}


