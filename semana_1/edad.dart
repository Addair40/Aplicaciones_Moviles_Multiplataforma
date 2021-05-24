import "dart:io";
void main(){
  print("EDAD DEL PERRO");

  stdout.writeln("LA EDAD DEL PERRO ");
  var perro = stdin.readLineSync();
  double perro1 = double.parse(perro);
  print("LA EDAD DEL PERRO ES  $perro1");

  var edad = (perro1 * 7);
  print("LA EDAD ES $edad");

  }