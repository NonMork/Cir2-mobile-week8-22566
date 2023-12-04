void asynchronus(int a){
  print("First Operation");
  delay(3);
  print("Third Operation");
  delay2(2);
  print("Last Operation");
}

void delay(int a) {
  Future.delayed(Duration(seconds: a),() =>print("Second Operation"));
}
void delay2(int a) {
  Future.delayed(Duration(seconds: a),() =>print("Last Operation"));
}
