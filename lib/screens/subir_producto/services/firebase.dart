import 'package:cloud_firestore/cloud_firestore.dart';

class Articulo {
  final String id;
  final String nombre;
  final String descripcion;
  final String color;
  final String condicion;
  final String categoria;
  final int talla;
  final int precioOriginal;
  final int precioFinal;

  Articulo({
    this.id = '',
    required this.nombre,
    required this.descripcion,
    required this.talla,
    required this.color,
    required this.condicion,
    required this.categoria,
    required this.precioOriginal,
    required this.precioFinal,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'descripcion': descripcion,
        'talla': talla,
        'color': color,
        'condicion': condicion,
        'categoria': categoria,
        'precio original': precioOriginal,
        'precio final': precioFinal,
      };

  static Articulo fromJson(Map<String, dynamic> json) => Articulo(
        id: json['id'],
        nombre: json['nombre'],
        descripcion: json['descripcion'],
        talla: json['talla'],
        color: json['color'],
        condicion: json['condicion'],
        categoria: json['categoria'],
        precioOriginal: json['precio original'],
        precioFinal: json['precio final'],
      );
}
