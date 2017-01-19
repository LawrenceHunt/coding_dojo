describe("CharCalculater", function() {

  var calc = new CharCalculater();

  it("prompts for an input string", function() {
    console.log = jasmine.createSpy('log');
    var prompt = calc.prompt();
    expect(console.log).toHaveBeenCalledWith(prompt);
  });

});
