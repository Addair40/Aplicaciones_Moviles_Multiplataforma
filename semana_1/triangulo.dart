import "dart:io";
void main(){
  print("AREA DE UN TRIANGULO");
  
  stdout.writeln("INSERTAR UNA BASE");
  var base = stdin.readLineSync();
  double base1 = double.parse(base);
  print("LA BASE ES $base1");

  stdout.writeln("INSERTAR UNA ALTURA");
  var altura = stdin.readLineSync();
  double altura1 = double.parse(altura);
  print("LA ALTURA ES $altura1");

  var area = (base1 * altura1) /2;
  print("EL AREA ES $area");
}

