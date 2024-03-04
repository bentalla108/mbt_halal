import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/screens/authentication/screen/login_screen/login_screen.dart';
import 'package:mtb_halal/scr/screens/authentication/screen/otp/otp_screen.dart';
import 'package:mtb_halal/scr/screens/authentication/screen/profile/profile_screen.dart';
import 'package:mtb_halal/scr/screens/authentication/screen/signup_screen/signup_screen.dart';
import 'package:mtb_halal/scr/screens/cart/screen/cart_screen.dart';
import 'package:mtb_halal/scr/screens/home/screen/home_sceen.dart';
import 'package:mtb_halal/scr/screens/start/screen/loading.dart';
import 'package:mtb_halal/scr/screens/start/screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  NavigationMenu.routeName: (context) => const NavigationMenu(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoadingScreen.routeName: (context) => const LoadingScreen(),
  // SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  // ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  // ProductsScreen.routeName: (context) => const StoreScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
