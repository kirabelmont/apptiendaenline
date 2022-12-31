import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiendaonline/bloc/instancebloc.dart';
import 'package:tiendaonline/firebase_options.dart';
import 'package:tiendaonline/models/firebase.dart';
import 'package:tiendaonline/routes.dart';
import 'package:tiendaonline/screens/splash/splash_screen.dart';
import 'package:tiendaonline/theme.dart';

String? string;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Pruebas_traerdatos());
}

class Pruebas_traerdatos extends StatefulWidget {
  Pruebas_traerdatos({Key? key}) : super(key: key);

  @override
  State<Pruebas_traerdatos> createState() => _Pruebas_traerdatosState();
}

class _Pruebas_traerdatosState extends State<Pruebas_traerdatos> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: getProducto(),
          builder: ((BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: ((context, index) {
                  return Text(snapshot.data['nombre'].toString());
                }),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ),
    );
  }
}
