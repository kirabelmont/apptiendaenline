import 'package:flutter/material.dart';

class BanerMujeres extends StatelessWidget {
  const BanerMujeres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.network(
              'https://cdn.shopify.com/s/files/1/0899/2262/articles/las-mejores-tiendas-de-ropa-interior-y-lencer-a-para-mujer-en-cdmx_1024x1024.jpg?v=1578440407'),
          Text(
            'Mujeres',
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
