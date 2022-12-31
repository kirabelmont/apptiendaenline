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
  runApp(TiendaApp());
}

class TiendaApp extends StatelessWidget {
  const TiendaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductoEstadoBloc(ProductoEstado([])),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: 'Flutter Demo',
        theme: theme(),
        //home: MyHomePage(),
        // We use routeName so that we dont need to remember the name
        initialRoute: SplashScreen.routeName,
        routes: routes,
        //home: pruebasFirebase(),
      ),
    );
  }
}
/*
class pruebasFirebase extends StatefulWidget {
  pruebasFirebase({Key? key}) : super(key: key);

  @override
  State<pruebasFirebase> createState() => _pruebasFirebaseState();
}

class _pruebasFirebaseState extends State<pruebasFirebase> {
  late final dbfirebase = FirebaseFirestore.instance;
  late final doc = dbfirebase.doc('/productos/6ShnXnwBhgZJng0OpbqJ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          stream: doc.snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            final docsnap = snapshot.data!;
            return Column(
              children: [
                Text(docsnap['producto']),
                Image.network(docsnap['foto']),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('hola'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
*/
