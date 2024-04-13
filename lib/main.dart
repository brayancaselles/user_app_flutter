import 'package:flutter/material.dart';
import 'package:user_app/config/theme/app_theme.dart';
import 'package:user_app/presentation/screens/users/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User App',
      theme: AppTheme(selectedColor: 1).theme(),
      home: const UsersScreen(),
    );
  }
}
