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
    expect(calc._tip).toEqual(0.25);
  });

  it("displays the tip", function() {
    calc._bill = 100;
    calc._tip = 0.25;
    expect(calc.displayTip()).toEqual("£25.00");
  });

});
