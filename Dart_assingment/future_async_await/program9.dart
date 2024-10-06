Future<int> fun() {
  return Future.delayed(Duration(seconds: 5), () => 10);
}

void main() {
  print("Start Main");
  Future<int> x = fun();
  print(x);
  print("End Main");
}
