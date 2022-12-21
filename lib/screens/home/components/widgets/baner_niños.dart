import 'package:flutter/material.dart';

class BanerNinos extends StatelessWidget {
  const BanerNinos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.network(
            'https://www.chiquipedia.com/imagenes/10-combinaciones-de-color-para-la-ropa-de-los-ninos.jpg',
            width: 200,
          ),
          Text(
            'Niños',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
