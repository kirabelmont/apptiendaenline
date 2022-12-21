class Producto {
  final String id;
  final String titulo;
  final String vendedor;
  final String descripcion;
  final String coverUrl;

  const Producto(
      this.id, this.titulo, this.vendedor, this.descripcion, this.coverUrl);

  Producto.fromJson(String id, Map<String, dynamic> json)
      : this(
          id,
          json['name'] as String,
          json['author'] as String,
          json['summary'] as String,
          json.containsKey('coverUrl')
              ? json['coverUrl'] as String
              : "assets/images/blank_Producto.png",
        );

  toJson() {
    //TODO
    throw UnimplementedError();
  }
}
