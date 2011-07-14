package ic.doc.observer;

public class StockObserver {

    private int notified;

    public void update(int value) {
        notified = value;
    }

    public int latestNotification() {
        return notified;
    }
}
