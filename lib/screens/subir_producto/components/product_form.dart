//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:tiendaonline/components/custom_surfix_icon.dart';
import 'package:tiendaonline/components/form_error.dart';
import 'package:tiendaonline/helper/keyboard.dart';
//import 'package:tiendaonline/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiendaonline/screens/login_success/login_success_screen.dart';
// ignore: depend_on_referenced_packages
//import 'package:select_form_field/select_form_field.dart';

//import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({Key? key}) : super(key: key);

  @override
  State<ProductForm> createState() => _ProductFormState();
}

//Lista de objetos
const List<String> _estados = <String>[
  'Nuevo con etiqueta',
  'Como nuevo',
  'Pre-Love'
];

class _ProductFormState extends State<ProductForm> {
  final _formKey = GlobalKey<FormState>();
  String? nombreProducto;
  String? detallesProducto;
  bool? remember = false;
  final List<String?> errors = [];
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  get onChanged => null;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildTamanio(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildColor(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildCondicion(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildCategoria(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPrecioOriginal(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPrecioFinal(),
          SizedBox(height: getProportionateScreenHeight(20)),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          DefaultButton(
            text: "Continuar",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      //obscureText: true,
      maxLines: 10,
      onSaved: (newValue) => detallesProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: DescripcionArticulo);
          return "";
        }
        //return null;
      },
      decoration: const InputDecoration(
        labelText: "Descripcion del articulo",
        hintText: "Descripcion del articulo",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => nombreProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: NombreArticulo);
          return "";
        }
      },
      decoration: const InputDecoration(
        labelText: "Nombre del Articulo",
        hintText: "Escriba el nombre del artículo",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildTamanio() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => nombreProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: NombreArticulo);
          return "";
        }
      },
      decoration: const InputDecoration(
        labelText: "Talla",
        hintText: "Talla de su prenda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildColor() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => nombreProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: NombreArticulo);
          return "";
        }
      },
      decoration: const InputDecoration(
        labelText: "Color",
        hintText: "Color de su prenda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  final String _categoria = 'Seleccione la categoría';
  Scaffold buildestado2() {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          items: _estados.map((String e) {
            return DropdownMenuItem(value: e, child: Text(e));
          }).toList(),
          onChanged: null,
          hint: Text(_categoria),
        ),
      ),
    );
  }

  TextFormField buildCondicion() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => nombreProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: NombreArticulo);
          return "";
        }
      },
      decoration: const InputDecoration(
        labelText: "Condición",
        hintText: "Condición de su prenda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildCategoria() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => nombreProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: NombreArticulo);
          return "";
        }
      },
      decoration: const InputDecoration(
        labelText: "Categoría",
        hintText: "Categoría",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildPrecioOriginal() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => nombreProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: NombreArticulo);
          return "";
        }
      },
      decoration: const InputDecoration(
        labelText: "Precio original",
        hintText: "Costo original de su prenda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildPrecioFinal() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => nombreProducto = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: NombreArticulo);
          return "";
        }
      },
      decoration: const InputDecoration(
        labelText: "Precio final",
        hintText: "Costo de venta de su prenda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
