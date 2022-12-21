import 'package:flutter/material.dart';
import 'package:tiendaonline/size_config.dart';

const kPrimaryColor = Color.fromARGB(255, 248, 113, 128);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color.fromARGB(255, 0, 0, 0);
const kTextColor = Color.fromARGB(255, 0, 0, 0);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor agrega un correo";
const String kInvalidEmailError = "Por favor agrega un correo valido";
const String kPassNullError = "Agrega una contraseña";
const String kShortPassError = "La Contraseña es muy corta";
const String kMatchPassError = "Las contraseñas no coinciden";
const String kNamelNullError = "Agrega tu nombre";
const String kPhoneNumberNullError = "Agrega tu numero telefonico";
const String kAddressNullError = "Agrega tu direccion";
// ignore: constant_identifier_names
const String NombreArticulo = "Favor de agregar un nombre al articulo";
// ignore: constant_identifier_names
const String DescripcionArticulo =
    "Favor de agregar una descripcion al articulo";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
