// WITH PARAMETER AND NO RETURN TYPE
// CODE NO 9
import "dart:io";
// void main(){
//   int num1 = int.parse(stdin.readLineSync()!);
//   int num2 = int.parse(stdin.readLineSync()!);
//   add(num1,num2);
// }
// void add(int num1,int num2){
//   print("Add = ${num1+num2}");
// }



// code no 10
void main(){
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
 
 int returnVal = add(num1 , num2);
 print(" ReturnVal= $returnVal");
}
int add(int num1, int num2){
  return num1 +num2;
}

