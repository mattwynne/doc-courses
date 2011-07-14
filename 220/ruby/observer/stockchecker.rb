class StockChecker
  def initialize(level)
    @level = level
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end
  
  def buy_item
    @level -= 1
    notify_observers
  end
  
  def notify_observers
    @observers.each { |obs| obs.notify(@level) }
  end
end

class StockObserver
  def notify(level)
    @level = level
  end

  def latest_notification
    @level
  end
end