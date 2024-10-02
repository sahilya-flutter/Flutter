class Parent {
void carrer() {
print("Family Business");
}
void marry() {
print("Deepika Padukone");
}
}
class Child extends Parent {
@override
void marry() {
print("Alia Bhat");
}
}
void main() {
Child obj = Child();
obj.carrer();
obj.marry();
}
