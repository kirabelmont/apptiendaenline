import 'package:flutter/material.dart';

class BanerBebes extends StatelessWidget {
  const BanerBebes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.network(
            'https://assetspwa.liverpool.com.mx/assets/digital/landing/bebes/img/blp_2a_110422.jpg',
            width: 200,
          ),
          Text(
            'Bebes',
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
