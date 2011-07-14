require('./stockchecker')

describe("StockChecker", function() {
  it("informs observer of changes in stock level", function() {
    var stockchecker = new StockChecker(5);
    var observer = new StockObserver();
    stockchecker.addObserver(observer);
    stockchecker.buyItem();
    expect(observer.latestNotification()).toEqual(4);
  });
  
  it("can have multiple observers", function() {
   	 var stockchecker = new StockChecker(5);
	 var observer1 = new StockObserver();
     var observer2 = new StockObserver();
	 stockchecker.addObserver(observer1);
	 stockchecker.addObserver(observer2);
     stockchecker.buyItem();
     expect(observer1.latestNotification()).toEqual(4);
     expect(observer2.latestNotification()).toEqual(4);
  });
});
