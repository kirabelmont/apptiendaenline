import 'package:flutter/material.dart';

import 'components/body.dart';

class SubirProducto extends StatelessWidget {
  static String routeName = "/subir_producto";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
