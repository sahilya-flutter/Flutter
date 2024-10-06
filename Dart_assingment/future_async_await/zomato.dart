import 'dart:io';

Future<String> preparingOrder(String food) {
  print("Prepring....");
  return Future.delayed(Duration(seconds: 5), () => food);

}
placeOrder(){
  
}
