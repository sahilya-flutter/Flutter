class Demo{

}
class Demochild extends Demo{

}
class Parent{
  void carrer(){
    print("Family Business");

  }
  Demo marry(){
    print("deepika Padukon");
    return Demo();
  }
}
class Child extends Parent{
  @override
  Demochild marry(){
    print("Alia Bhat");
    return Demochild();
  }
}
void main(){
  Child obj= Child();
  obj.carrer();
  obj.marry();
}
