class Parent {
void carrer() {
print("Family Business");
}
dynamic marry() {
print("Deepika Padukone");
return 10;
}
}
class Child extends Parent { 
@override
dynamic marry() {
print("Alia Bhat");
return 10.5;
}
}
void main() {
Child obj = Child();
obj.carrer();
obj.marry();
}
