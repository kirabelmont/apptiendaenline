import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';

import '../models/productos.dart';

class ProductoService {
  final booksRef = FirebaseFirestore.instance.collection('books').withConverter(
        fromFirestore: (snapshot, _) =>
            Producto.fromJson(snapshot.id, snapshot.data()!),
        toFirestore: (book, _) => book.toJson(),
      );

  Future<List<Producto>> getUltimosProductos() async {
    var result = await booksRef.limit(3).get().then((value) => value);
    List<Producto> books = [];
    for (var doc in result.docs) {
      books.add(doc.data());
    }
    return Future.value(books);
  }

  Future<Producto> getProducto(String bookId) async {
    var result = await booksRef.doc(bookId).get().then((value) => value);
    if (result.exists) {
      return Future.value(result.data());
    }
    throw const HttpException("Book not found");
  }

  Future<String> saveProducto(
      String title, String author, String summary) async {
    var reference = FirebaseFirestore.instance.collection("books");
    var result = await reference.add({
      'name': title,
      'author': author,
      'summary': summary,
    });

    return Future.value(result.id);
  }

  Future<String> uploadImagenProducto(
      String imagePath, String newBookId) async {
    try {
      var newBookRef = 'books/$newBookId.png';
      File image = File(imagePath);
      await firebase_storage.FirebaseStorage.instance
          .ref(newBookRef)
          .putFile(image);

      return firebase_storage.FirebaseStorage.instance
          .ref(newBookRef)
          .getDownloadURL();
    } on FirebaseException catch (e) {
      debugPrint(e.message);
      rethrow;
    }
  }

  Future<void> updateProducto(String newBookId, String imageUrl) {
    var reference =
        FirebaseFirestore.instance.collection("books").doc(newBookId);
    return reference.update({
      'coverUrl': imageUrl,
    });
  }
}
