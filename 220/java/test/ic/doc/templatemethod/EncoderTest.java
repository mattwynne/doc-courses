package ic.doc.templatemethod;

import ic.doc.templatemethod.DoubleEncoder;
import ic.doc.templatemethod.ReverseEncoder;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class EncoderTest {

    @Test
    public void reverseEncodingReversesEachWordInTheInput() {
        assertThat(new ReverseEncoder().encode("abcde 123"), is("edcba 321"));
    }

    @Test
    public void doubleEncodingRepeatsEachWordInTheInput() {
        assertThat(new DoubleEncoder().encode("abcde 123"), is("abcdeabcde 123123"));
    }

}