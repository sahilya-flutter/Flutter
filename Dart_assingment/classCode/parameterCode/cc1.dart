// NAMED CONSTRUCTOR
/*class Player{
  int? jerNo;
  String? pName;
  double? sal;

  Player.cric(int jerNo,String pName,double sal){
    print("Named Constructor");
    this.jerNo=jerNo;
    this.pName=pName;
    this.sal=sal;

  }

  void playerInfo(){
    print(jerNo);
    print(pName);
    print(sal);
  }
}
void main(){
  Player obj = new Player();
  Player obj1 = new Player(37,"vishal",);
  obj.playerInfo();
   obj1.playerInfo();
}*/


// PARAMETERIZED CONSTRUCTOR
/*class Player{
  int? jerNo;
  String? pName;
  double? sal;

  Player.cric(int jerNo,String pName,double sal){
    print("PARAMETERIZED Constructor");
    this.jerNo=jerNo;
    this.pName=pName;
    this.sal=sal;

  }

  void playerInfo(){
    print(jerNo);
    print(pName);
    print(sal);
  }
}
void main(){
  Player obj = new Player();
  Player obj1 = new Player(37,"vishal",);
  obj.playerInfo();
   obj1.playerInfo();
}*/


/*class Player{
  int? jerNo;
  String? pName;
  double? sal;

  Player(this.jerNo,this.pName,this.sal);
   

  void playerInfo(){
    print(jerNo);
    print(pName);
    print(sal);
  }
}
void main(){
  Player obj = new Player(18,"VIRAT",3.5);
  
  obj.playerInfo();
}*/


// code6

/*class Player{
  int? jerNo;
  String? pName;
  double? sal;

  Player(this.jerNo,this.pName,[this.sal=5.0]);
   

  void playerInfo(){
    print(jerNo);
    print(pName);
    print(sal);
  }
}
void main(){
  Player obj = new Player(18,"VIRAT",3.5);
  obj.playerInfo();
  Player obj1 = new Player(10,"KL Rahul");
  obj1.playerInfo();
}*/

// code7
/*class Player{
  int? jerNo;
  String? pName;
  double? sal;

  Player({this.jerNo,this.pName,this.sal});
   

  void playerInfo(){
    print(jerNo);
    print(pName);
    print(sal);
  }
}
void main(){
  Player obj = new Player(18,"VIRAT",3.5);
  obj.playerInfo();
  Player obj1 = new Player(10,"KL Rahul");
  obj1.playerInfo();
}
*/
// code 8

class Player{
  int? jerNo;
  String? pName;
  double? sal;

  Player({this.jerNo,this.pName,this.sal=5.0});
   

  void playerInfo(){
    print(jerNo);
    print(pName);
    print(sal);
  }
}
void main(){
  Player obj = new Player(sal: 5.5,pName: "KL Rahul");
  obj.playerInfo();
  
}