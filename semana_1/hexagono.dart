import "dart:io";
void main(){
  print("PERIMETRO DE UN HEXAGONO");

  stdout.writeln("INSERTAR UN LADO");
  var cara = stdin.readLineSync();
  double cara1 = double.parse(cara);
  print("LA CARA ES $cara1");

  var perimetro = (cara1 * 6);
  print("EL PERIMETRO ES $perimetro");
}