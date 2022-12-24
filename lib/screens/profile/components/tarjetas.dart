import 'package:flutter/material.dart';

class TarjetasProfile extends StatefulWidget {
  TarjetasProfile({Key? key}) : super(key: key);

  @override
  State<TarjetasProfile> createState() => _TarjetasProfileState();
}

class _TarjetasProfileState extends State<TarjetasProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://www.hogarmania.com/archivos/202010/como-lavar-ropa-de-color-668x400x80xX-1.jpg',
          height: 150,
          width: 150,
        ),
        Text('Prducto de prueba'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
          ],
        )
      ],
    );
  }
}
