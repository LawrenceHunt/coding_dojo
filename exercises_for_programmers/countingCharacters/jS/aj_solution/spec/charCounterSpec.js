describe("CharCounter", function() {

  var count = new CharCounter();

  it("prompts for an input string", function() {
    console.log = jasmine.createSpy('log');
    count.prompt();
    expect(console.log).toHaveBeenCalledWith("What is the input string?");
  });

  it("Stores the user input", function() {
    count.prompt();
    spyOn(ui, 'readline').andReturn('Homer');
    expect(count._userString).to.equal('Homer');
  });

});
