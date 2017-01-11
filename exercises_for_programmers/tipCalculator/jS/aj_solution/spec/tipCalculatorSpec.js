describe("TipCalculator", function() {

  var calc;

  beforeEach(function() {
    calc = new TipCalculator();
  });

  it("stores the bill amount", function() {
    calc.requestBill();
    // trouble stubbing user input
    // spyOn(window, 'prompt').and.returnValue('100');
    expect(calc._bill).toEqual('100');
  });

  it("stores the tip rate", function() {
    calc.tipRate();
    expect(calc._tipPercentage).toEqual(0.25);
  });

  it("displays the tip", function() {
    calc._bill = 100;
    calc._tipPercentage = 0.25;
    expect(calc.displayTip()).toEqual("£25.00");
  });

  it("displays the total", function() {
    calc._bill = 100;
    calc._tipPercentage = 0.25;
    calc._tipTotal = 25.00;
    expect(calc.displayTotal()).toEqual("£125.00");
  });

});
