import 'package:flutter/material.dart';
import 'package:tiendaonline/screens/home/components/widgets/baner_bebe.dart';
import 'package:tiendaonline/screens/home/components/widgets/baner_hombre.dart';
import 'package:tiendaonline/screens/home/components/widgets/baner_mujer.dart';
import 'package:tiendaonline/screens/home/components/widgets/baner_ni%C3%B1os.dart';

import '../../../size_config.dart';

import 'widgets/home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            //const DiscountBanner(),
            const BanerHombre(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const BanerMujeres(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Row(
              children: [
                BanerBebes(),
                SizedBox(width: getProportionateScreenWidth(10)),
                BanerNinos(),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
          ],
        ),
      ),
    );
  }
}
