import 'package:flutter/material.dart';
import 'package:user_app/config/theme/app_theme.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        child: Icon(
          Icons.account_circle_sharp,
          size: 40,
          color: primaryColor,
        ),
      ),
      title: Text("Nombre de usuario"),
      subtitle: Text("Email de usuario"),
      trailing: Icon(Icons.link_sharp),
    );
  }
}
