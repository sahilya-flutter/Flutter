import"dart:io";
void main(){
  int jerNo =7;
  print("Enter name:");
  String? name = stdin.readLineSync();
  print("You Entered : $name");

  print(jerNo.runtimeType);
  print(name.runtimeType);
}