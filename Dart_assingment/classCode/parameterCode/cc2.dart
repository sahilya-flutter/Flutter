// CONST CONSTRUCTOR
// RULE FOR DECLARING CONSTANT CONSTRUCTOR IN DART
// 1)ALL PROPERTIES OF THE CLASS MUST BE FINAL.
// 2)IT DOES NOT HAVE ANY BODY.
// 3)ONLY A CLASS CONTAINING CONST CONSTRUCTOR IS INITIALIZED USING THE CONST KEYWORD. 


// code1
/*class Demo{
  // CLASS MADHE FAKT METHOD ASTAT ANI CLASS CHYA BAHER FUNCTIONS ASTAT.
   int? data;
   String? name;

   Demo(this.data, this.name);
}

void main(){
  Demo obj1=Demo(12,"HELLO");
  print(identityHashCode(obj1));
   Demo obj2=Demo(12,"BYE");
  print(identityHashCode(obj2));
}*/

// code2
/*class Demo{
   int? data;
   String? name;

   Demo(this.data, this.name);
}

void main(){
  Demo obj1=Demo(10,"BYE");
  print(identityHashCode(obj1));
   Demo obj2=Demo(10,"BYE");
  print(identityHashCode(obj2));
}*/


// CODE 3

/*class Demo{
   int? data;
   String? name;

  const Demo(this.data, this.name);  //dart madhe jehva const asel tr instance final pahije.
}

void main(){
  Demo obj1=Demo(10,"BYE");
  print(identityHashCode(obj1));
   Demo obj2=Demo(10,"BYE");
  print(identityHashCode(obj2));   //Error: Constructor is marked 'const' so all fields must be final.
                                  // const Demo(this.data, this.name);
}*/

// code4

class Demo{
   final int? data;
   final String? name;   //final keyword ha initialized chya veli  

  const Demo(this.data, this.name);
}

void main(){
  Demo obj1= const Demo(10,"BYE");
  print(identityHashCode(obj1));
   Demo obj2= const Demo(10,"BYE");
  print(identityHashCode(obj2));
}
