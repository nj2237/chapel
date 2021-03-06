var a: int;

class Foo {
  var x: int;

  proc init(xVal) {
    begin with (ref a) {
      on xVal.locale {
        a = xVal + 2;
      }
    }

    x = xVal;
    super.init();
  }
}

sync {
  var foo = new Foo(14);
  writeln(foo);
  delete foo;
}
writeln(a);
