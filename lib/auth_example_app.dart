import 'package:auth_example/screens/login_screen.dart';
import 'package:auth_example/screens/profile_screen.dart';
import 'package:auth_example/screens/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'values/app_strings.dart';
import 'values/app_theme.dart';

class AuthExampleApp extends StatelessWidget {
  const AuthExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.loginAndRegister,
      theme: AppTheme.themeData,
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginPage(),
        '/register': (BuildContext context) => const RegisterPage(),
        '/profile': (BuildContext context) => const ProfilePage(),
      },
      initialRoute: FirebaseAuth.instance.currentUser == null ? '/login' : '/profile',
    );
  }
}

