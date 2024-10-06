void main() {
  print("Statement1");
  Future.delayed(Duration(seconds: 5), () => print("Statement2"));
}

