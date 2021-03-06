// Initialize a record field in a record with an initializer
record Container {
  var y: Stored;
  var v;

  proc init() {
    y = new Stored(true);

    v = 10;
    super.init();
  }
}

record Stored {
  var x: bool;

  proc init(xVal) where !xVal: Stored {
    x = xVal;

    super.init();
  }
}

var c = new Container();

writeln(c);
