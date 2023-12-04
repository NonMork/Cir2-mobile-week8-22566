void broadCastStreamOperation() {
  var stream = createNumberStream(5);
  var bStream = stream.asBroadcastStream(); 
  if(bStream.isBroadcast){
    print("Broadcast Stream");
  }else{
    print("Single Stream");
  }
  bStream.first.then((value) => print("First event: $value"));
  bStream.last.then((value) => print("Last event: $value"));
  bStream.length.then((value) => print("length of Stream: $value"));
  bStream.isEmpty.then((value) => print("isEmpty: $value"));
  stream = createNumberStream(0);
  bStream = stream.asBroadcastStream();
  bStream.isEmpty.then((value) => print("isEmpty: $value"));
}

Stream<int> createNumberStream(int last) async* {
  for (int i = 1; i <= last; i++) {
    yield i;
  }
}