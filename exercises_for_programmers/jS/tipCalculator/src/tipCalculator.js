function TipCalculator () {
  this._bill = 0;
  this._tip = 0;
}

TipCalculator.prototype.requestBill = function () {
  this._bill = prompt("What is the bill?");
};

TipCalculator.prototype.tipRate = function () {
  var tip = prompt("What is the tip percentage?");
  this._tip = (tip >= 1) ? tip * 0.01 : tip;
};

TipCalculator.prototype.displayTip = function () {
  var tipTotal = (this._bill * this._tip).toFixed(2);
  var formatTip = "£" + (tipTotal).toString();
  return formatTip;
};
