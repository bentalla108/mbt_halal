import 'package:flutter/material.dart';
import 'scr/core/app_export.dart';
import 'scr/screens/authentication/screen/otp/otp_screen.dart';
import 'scr/screens/authentication/screen/profile/profile_screen.dart';
import 'scr/screens/home/screen/home_sceen.dart';
import 'scr/screens/start/screen/loading.dart';
import 'scr/screens/start/screen/splash_screen.dart';
import 'scr/screens/cart/screen/my_cart_screen.dart';

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
  MyCartView.routeName: (context) => const MyCartView(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
