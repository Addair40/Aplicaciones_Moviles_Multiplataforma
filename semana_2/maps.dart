import "dart:io";

void main(){
  Map <dynamic, dynamic> mapas = {};
  String sol = "s";
print("MENU DEL ALAMACENAMIENTO DE DATOS");



  while (sol == "s" || sol == "S")
  

  {

    print("I     -MOSTRAR TODOS LOS DATOS-");
    print("II    -INSERTAR NUEVO REGISTRO-");
    print("III   -MODIFICAR UN REGISTRO-");
    print("IV    -BORRAR UN REGISTRO-");

    print("¿QUE OPCION?:");
    
    int answ = int.parse(stdin.readLineSync());
    if (answ == 1) { 
      M1(mapas, sol);
    } else if (answ == 2) {
      M2(mapas, sol);
    } else if (answ == 3) {
      M3(mapas, sol);
    } else if (answ == 4) {
      M4(mapas, sol);
    }

    print("¿VOLVER A INGRESAR DATOS? (S/N)");
    sol = stdin.readLineSync();
    if (sol == "n" || sol == "N"){
      sol = "s";
    }else if (sol == "s" || sol == "s")
    {
      break;
    }
  }
}


void M1(mapas, sol){

  print(mapas);

  print("¿REGRESAR AL MENU PRINCIPAL? (S/N)");

  sol = stdin.readLineSync();
}


void M2(mapas, sol,){

  print("NOMBRE: ");

  var key = stdin.readLineSync();

  print("TELEFONO");

  var value = stdin.readLineSync();

  mapas[key] = value;

  print("¿REGRESAR AL MENU PRINCIPAL? (S/N)");

  sol = stdin.readLineSync();
}

void M3(mapas, sol){

  print("DATOS A MODIFICAR");

  var key = stdin.readLineSync();

  print("INGRESAR");

  var value = stdin.readLineSync();

  mapas[key] = value;

  print("¿REGRESAR AL MENU PRINCIPAL? (S/N)");

  sol = stdin.readLineSync();
}

void M4(mapas, sol){

  print("DATOS A ELIMINAR");

  var key = stdin.readLineSync();

  mapas.remove(key);

  print("¿REGRESAR AL MENU PRINCIPAL? (S/N)");

  sol = stdin.readLineSync();
}

