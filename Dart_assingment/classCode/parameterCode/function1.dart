// NO PARAMETER AND NO RETURN TYPE
import "dart:io";
void main(){
  print("Start Code");
  add();
}
void add(){
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  print("Add = ${num1+ num2}");
}