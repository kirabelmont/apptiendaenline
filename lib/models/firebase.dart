import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getProducto() async {
  List? productos = [];

  CollectionReference collectionReferenceProductos = db.collection('productos');
  QuerySnapshot queryproductos = await collectionReferenceProductos.get();

  queryproductos.docs.forEach((documento) {
    productos.add(documento.data());
  });

  return productos;
}
