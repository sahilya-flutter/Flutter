void main() {
  print("Statement 1");
  Future(() => print("Statement 2"));
  Future(() => print("Statement 3"));
  print("Statement 4");
}
