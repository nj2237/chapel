module M1 {
  writeln("In M1's initialization");
  var x: real = 3.4;
}

module M2 {
  proc main() {
    writeln("M1.x is: ", M1.x);
  }
}
