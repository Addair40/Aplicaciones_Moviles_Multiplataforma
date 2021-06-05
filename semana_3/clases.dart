import "dart:io";
List resultado = [];
void main(){
  final objeto = new sensores();
  objeto.registro();
  objeto.datos_almacenados();
}
class sensores {
  void registro(){
    print("NUMEROS DE REGISTROS DE ALMACENAMIENTO:");
    var sensor=stdin.readLineSync();
    int sensorone = int.parse(sensor);
    for (int i = 0; i<sensorone; i++){
      print("id_sensor:");
      var id=stdin.readLineSync();
      print("Valor:");
      var valor=stdin.readLineSync();
      print("fecha_registro:");
      var fecha=stdin.readLineSync();
      Map<dynamic,dynamic>datos = {
        'id_sensor':id,
        'Valor':valor,
        'fecha_registro':fecha
      };
      resultado.add(datos);

    }
  }
  void datos_almacenados(){
    print(resultado);
  }
}

