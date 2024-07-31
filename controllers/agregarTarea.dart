import 'dart:io';

import '../models/tarea.dart';

void agregarTarea() {
  final entrada = stdin;

  try {
    final archivo = File('./tareas.txt');
    if (archivo.existsSync()) {
      final contenido = archivo.readAsStringSync();

      print('Nombre de la tarea');
      final nombre = entrada.readLineSync() ?? 'Tarea sin nombre';
      print('Descripcion de la tarea');
      final descripcion = entrada.readLineSync();
      final tarea = Tarea(nombre, descripcion: descripcion);
      archivo.writeAsStringSync(contenido + '\n' + tarea.convertirCadena());
    } else {
      print('El archivo no existe');
    }
  } catch (e) {
    print('Ocurrio un error: ${e.toString()}');
  }
}
