import 'proyecto.dart';
import 'subTarea.dart';

class Tarea implements Proyecto {
  final String nombre;
  final String? descripcion;
  EstadoTarea? estado;

  List<Subtarea> subtareas = [];

  Tarea(this.nombre,
      {this.descripcion = '', this.estado = EstadoTarea.norealizada});

  @override
  void culminarTarea() {
    estado = EstadoTarea.norealizada;
  }

  @override
  void postergarTarea() {
    estado = EstadoTarea.postergada;
  }

  @override
  void realizarTarea() {
    estado = EstadoTarea.realizada;
  }

  void agregarSubTarea(Subtarea subtarea) {
    subtareas.add(subtarea);
  }

  void eliminarSubTarea(int index) {
    subtareas.removeAt(index);
  }

  String convertirCadena() {
    return '$nombre|$descripcion|$estado';
  }
}

enum EstadoTarea { realizada, postergada, norealizada }
