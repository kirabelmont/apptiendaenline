import 'package:flutter/material.dart';

class BanerHombre extends StatelessWidget {
  const BanerHombre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.network(
              'https://media.gq.com.mx/photos/632b39a722c97ee0ad66e56e/16:9/w_2560%2Cc_limit/ropa-de-hombre-que-puedes-usar-todo-el-ano.jpg'),
          Text(
            'Hombre',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}
