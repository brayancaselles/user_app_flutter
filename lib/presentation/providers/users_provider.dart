import 'package:flutter/material.dart';

import '../../domain/entities/users.dart';

class UsersProvider extends ChangeNotifier {
  List<Users> users = [];

  Future<void> getUsers() async {
    //TODO: Obtener usuarios
  }
}
