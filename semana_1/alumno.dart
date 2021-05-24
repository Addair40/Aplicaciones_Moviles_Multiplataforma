import "dart:io";
void main(){
  print("PROMEDIO DE UN ALUMNO");

  stdout.writeln("CALIFICACION NUMERO 1");
  var calificacion20 = stdin.readLineSync();
  double calificacion1 = double.parse(calificacion20);
  print("LA CALIFICACION 1 ES  $calificacion1");
  var cal1 = (calificacion1 * .20);

  stdout.writeln("CALIFICACION NUMERO 2");
  var calificacion30 = stdin.readLineSync();
  double calificacion2 = double.parse(calificacion30);
  print("LA CALIFICACION 2 ES $calificacion2");
  var cal2 = (calificacion2 * .30);

  stdout.writeln("CALIFICACION NUMERO 3");
  var calificacion50 = stdin.readLineSync();
  double calificacion3 = double.parse(calificacion50);
  print("LA CALIFICACION 3 ES $calificacion3");  
  var cal3 = (calificacion3 * .50);

  var total = (cal1 + cal2 + cal3);
  print("EL TOTAL ES  $total");


}
