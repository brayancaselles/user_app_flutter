import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/config/router/app_router.dart';
import 'package:user_app/config/theme/app_theme.dart';
import 'package:user_app/presentation/providers/user_provider.dart';
import 'package:user_app/presentation/providers/users_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsersProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        title: 'User App',
        theme: AppTheme(selectedColor: 1).theme(),
      ),
    );
  }
}
