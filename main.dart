import 'dart:io';

import 'controllers/agregarTarea.dart';
import 'controllers/verTarea.dart';
import 'controllers/eliminarTarea.dart';

void main() {
  print('----------BIENVENIDO A LA APLICACION----------');
  print('1. Agregar una tarea');
  print('2. Ver tareas');
  print('3. Eliminar tarea');
  print('----------Seleccione una opcion y presiona enter----------');

  final entrada = stdin;
  final seleccion = entrada.readLineSync();
  switch (seleccion) {
    case '1':
      print('Ingresa la tarea');
      agregarTarea();
      break;
    case '2':
      print('Ver tareas');
      print('Ingresa el nombre de la tarea: ');
      final nombre = entrada.readLineSync();
      verTarea(nombre ?? '');
      break;
    case '3':
      print('Eliminando tarea');
      print('Ingresa el nombre de la tarea: ');
      final nombre = entrada.readLineSync();
      eliminarTarea(nombre ?? '');
      break;
    default:
      print('Opcion no valida');
  }

  if (Platform.isWindows) {
    print('Presione Enter para salir');
    entrada.readLineSync();
  }
}
