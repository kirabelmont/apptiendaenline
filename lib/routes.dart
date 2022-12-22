import 'package:flutter/widgets.dart';
import 'package:tiendaonline/screens/cart/cart_screen.dart';
import 'package:tiendaonline/screens/complete_profile/complete_profile_screen.dart';
import 'package:tiendaonline/screens/details/details_screen.dart';
import 'package:tiendaonline/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiendaonline/screens/hombre/hombre.dart';
import 'package:tiendaonline/screens/home/home_screen.dart';
import 'package:tiendaonline/screens/login_success/login_success_screen.dart';
import 'package:tiendaonline/screens/otp/otp_screen.dart';
import 'package:tiendaonline/screens/profile/profile_screen.dart';
import 'package:tiendaonline/screens/sign_in/sign_in_screen.dart';
import 'package:tiendaonline/screens/splash/splash_screen.dart';
import 'package:tiendaonline/screens/subir_producto/subirproducto.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SubirProducto.routeName: (context) => SubirProducto(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  HombrePage.routeName: (context) => const HombrePage(),
};
