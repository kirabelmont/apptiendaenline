import 'package:flutter/material.dart';
import 'package:tiendaonline/screens/home/components/widgets/home_header.dart';

class HombrePage extends StatelessWidget {
  static String routeName = "/HombrePage";
  const HombrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(),
      ],
    );
  }
}
