import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/config/theme/app_theme.dart';
import 'package:user_app/domain/entities/user_list_entity.dart';
import 'package:user_app/presentation/providers/user_provider.dart';

class UserDetailScreen extends StatelessWidget {
  static const name = 'user_detail_screen';
  final int userId;

  const UserDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalle de Usuario:  ',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: secondColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: FutureBuilder<UserEntity>(
        future: context.read<UserProvider>().getUser(userId),
        builder: (context, AsyncSnapshot<UserEntity> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final user = snapshot.data;
            return _UserView(user: user!);
          }
        },
      ),
    );
  }
}

class _UserView extends StatelessWidget {
  final UserEntity user;

  const _UserView({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Card(
        elevation: 4.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            side: BorderSide(color: thirdColor)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre: ${user.name}',
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text('Username: ${user.username}'),
              Text('Email: ${user.email}'),
              const SizedBox(height: 12.0),
              const Text('Direccion:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                '${user.address.street}, ${user.address.suite}, ${user.address.city}, ${user.address.zipcode}',
              ),
              const SizedBox(height: 8.0),
              Text('Telefono: ${user.phone}'),
              Text('Website: ${user.website}'),
              const SizedBox(height: 12.0),
              const Text('Compañia:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Nombre: ${user.company.name}'),
              Text('Catch Phrase: ${user.company.catchPhrase}'),
              Text('Business: ${user.company.bs}'),
            ],
          ),
        ),
      ),
    );
  }
}
