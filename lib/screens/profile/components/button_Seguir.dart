import 'package:flutter/material.dart';

class ButtonSeguidores extends StatefulWidget {
  ButtonSeguidores({Key? key}) : super(key: key);

  @override
  State<ButtonSeguidores> createState() => _ButtonSeguidoresState();
}

class _ButtonSeguidoresState extends State<ButtonSeguidores> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Sigueme'),
        )
      ],
    );
  }
}
