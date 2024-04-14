import 'package:flutter/material.dart';
import 'package:user_app/config/theme/app_theme.dart';

import '../../../domain/entities/users_entity.dart';

class UserItem extends StatelessWidget {
  final UsersEntity user;

  const UserItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(
          Icons.account_circle_sharp,
          size: 40,
          color: primaryColor,
        ),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: const Icon(Icons.link_sharp),
    );
  }
}
