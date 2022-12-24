import 'package:flutter/material.dart';

class TextosCambiantes extends StatelessWidget {
  const TextosCambiantes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Articulos',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '999',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'Seguidores',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '999',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'Seguidos',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '999',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
