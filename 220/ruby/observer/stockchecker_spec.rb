require './stockchecker'

describe StockChecker do
  it "informs observer of changes in stock level" do
    stockchecker = StockChecker.new(5)
    observer = StockObserver.new
    stockchecker.add_observer(observer)
    stockchecker.buy_item
    observer.latest_notification.should == 4
  end
  
  it "can have multiple observers" do
    stockchecker = StockChecker.new(5)
    observer1 = StockObserver.new
    observer2 = StockObserver.new
    stockchecker.add_observer(observer1)  
    stockchecker.add_observer(observer2)
    stockchecker.buy_item
    observer1.latest_notification.should == 4
    observer2.latest_notification.should == 4
  end
  
end
