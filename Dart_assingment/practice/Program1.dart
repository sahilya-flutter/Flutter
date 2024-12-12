// Clousers and lexical scope

Function mackeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  var add2 = mackeAdder(2);
  var add5 = mackeAdder(5);

  print(add2(3));
  print(add5(6));
}
