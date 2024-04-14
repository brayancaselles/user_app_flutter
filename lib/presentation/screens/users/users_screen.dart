import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/config/theme/app_theme.dart';
import 'package:user_app/presentation/providers/users_provider.dart';
import 'package:user_app/presentation/widgets/users/user_item.dart';

class UsersScreen extends StatefulWidget {
  static const String name = 'users_screen';
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Usuarios',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: secondColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: _UsersView(),
    );
  }
}

class _UsersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usersProvider = context.watch<UsersProvider>();
    usersProvider.getUsers();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: usersProvider.users.length,
              itemBuilder: (context, index) {
                final user = usersProvider.users[index];
                return UserItem(user: user);
              },
            ))
          ],
        ),
      ),
    );
  }
}
