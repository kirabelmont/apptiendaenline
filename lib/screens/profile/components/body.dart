import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "Mi cuenta",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Mis Productos",
            icon: "assets/icons/misproductos.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Seguidores",
            icon: "assets/icons/seguidores.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Siguiendo",
            icon: "assets/icons/siguiendo.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Ajustes",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Ayuda",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Cerrar sesion",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
