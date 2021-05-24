import "dart:io";
void main(){
  print("POKEMON");

  stdout.writeln("BASE DEL RECTANGULO");
  var base = stdin.readLineSync();
  double base1 = double.parse(base);
  print("LA BASE DEL RECTANGULO ES  $base1");


  stdout.writeln("ALTURA DEL RECTANGULO");
  var altura = stdin.readLineSync();
  double altura1 = double.parse(altura);
  print("LA ALTURA ES   $altura1");

  var pokemon = (base1 *altura1) /30;
  print("CANTIDAD DE POKEMONES ES $pokemon");
}