import 'package:flutter/material.dart';
import 'package:shop/screens/ecom_home_screen.dart';
import 'package:shop/screens/forget_password_screen.dart';
import 'package:shop/screens/login_credentials_screen.dart';
import 'package:shop/screens/reset_password_screen.dart';
import 'package:shop/screens/splash_screen.dart';
import 'package:shop/utils/theme/theme.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.system,
      theme: RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        // '/': (context) => const ForgetPasswordScreen(),
        'loginCred': (context) => const LoginCredentialsScreen(),
        'ecommerceHome': (context) => const EcommerceHomeScreen(),
        'forgetPassword': (context) => const ForgetPasswordScreen(),
        'resetPassword': (context) => const ResetPasswordScreen(),
      },
    ),
  );
}
