package ic.doc.observer;

import java.util.ArrayList;
import java.util.List;

public class StockChecker {
    private final List<StockObserver> observers = new ArrayList<StockObserver>();
    private int level;

    public StockChecker(int initialLevel) {
        level = initialLevel;
    }

    public void buyItem() {
        level--;
        notifyObservers(level);
    }

    private void notifyObservers(int level) {
        for (StockObserver observer : observers) {
            observer.update(level);
        }
    }

    public void addObserver(StockObserver observer) {
        observers.add(observer);
    }
}
