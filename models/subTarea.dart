import 'proyecto.dart';
import 'tarea.dart';

class Subtarea extends Tarea implements Proyecto {
  Subtarea(String nombre, String? descripcion, EstadoTarea? estado)
      : super(nombre, descripcion: descripcion, estado: estado);
}
