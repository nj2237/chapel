class foo {
  var x;
  function print() {
    writeln(x);
  }
}

var f : foo = foo();

f.x = 2;

f.print();
