function TipCalculator () {
  this._bill = 0;
  this._tipPercentage = 0;
  this._tipTotal = 0;
  this._billTotal = 0;
}

TipCalculator.prototype.requestBill = function () {
  this._bill = prompt("What is the bill?");
};

TipCalculator.prototype.tipRate = function () {
  var tip = prompt("What is the tip percentage?");
  this._tipPercentage = (tip >= 1) ? tip * 0.01 : tip;
};

TipCalculator.prototype.displayTip = function () {
  this._tipTotal = (this._bill * this._tipPercentage);
  var formatTip = "£" + ((this._tipTotal).toFixed(2)).toString();
  return formatTip;
};

TipCalculator.prototype.displayTotal = function () {
  this._billTotal = (this._bill + this._tipTotal);
  var formatTotal = "£" + (this._billTotal.toFixed(2)).toString();
  return formatTotal;
};
