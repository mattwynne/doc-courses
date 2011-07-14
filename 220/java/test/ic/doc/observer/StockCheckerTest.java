package ic.doc.observer;

import org.hamcrest.CoreMatchers;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.assertThat;

public class StockCheckerTest {

    @Test
    public void informsObserverOfChangesInStockLevel() {

        StockChecker stockChecker = new StockChecker(5);
        StockObserver observer = new StockObserver();

        stockChecker.addObserver(observer);

        stockChecker.buyItem();

        assertThat(observer.latestNotification(), is(4));

    }
}
