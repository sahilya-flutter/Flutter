void main() {
  print("Statement 1");
  Future<String> retVal = Future(() => "Statement 2");
   print("Statement 4");
   print("Return val : $retVal");
    print("Statement 3");
}
