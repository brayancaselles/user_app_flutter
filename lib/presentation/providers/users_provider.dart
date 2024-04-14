import 'package:flutter/material.dart';
import 'package:user_app/domain/entities/users_entity.dart';

import '../../config/helpers/users_answer.dart';

class UsersProvider extends ChangeNotifier {
  final GetUsersAnswer usersAnswer = GetUsersAnswer();
  List<UsersEntity> users = [];

  Future<void> getUsers() async {
    users = await usersAnswer.getAnswer();
    notifyListeners();
  }
}
