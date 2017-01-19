(function(exports) {

function CharCounter(){

}

CharCounter.prototype.prompt = function(){
  console.log("What is the input string?");
}

exports.CharCounter = CharCounter;

})(this);
