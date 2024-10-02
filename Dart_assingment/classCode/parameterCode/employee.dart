import "dart:io";
void main(){
print("Enter Employee Name :");
String empName = stdin.readLineSync()!;

print("Enter the Employee ID:");
int empId = int.parse(stdin.readLineSync()!);

print("Enter The Employee Balance: ");
double empBal = double.parse(stdin.readLineSync()!);

print("Employee Name : $empName"  );
print("Employee ID : $empId");
print("Employee Bal : $empBal");
}