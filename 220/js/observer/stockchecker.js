StockChecker = function StockChecker(level) {
	var observers = [];
	this.addObserver = function (observer) {
		observers.push(observer);
	};
	this.buyItem = function () {
		level -= 1;
		observers.forEach(function (obs) {obs.notify(level); });
	};
};

StockObserver = function StockObserver() {
	var latest = 0;
	this.notify = function (level) {
		latest = level;
	};
	this.latestNotification = function () {
		return latest;
	};
};