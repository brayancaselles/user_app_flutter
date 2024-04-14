import 'package:flutter/material.dart';
import 'package:user_app/domain/entities/user_list_entity.dart';

import '../../config/helpers/user_list_answer.dart';

class UsersProvider extends ChangeNotifier {
  final GetUserListAnswer usersAnswer = GetUserListAnswer();
  List<UserEntity> users = [];

  Future<void> getUsers() async {
    users = await usersAnswer.getUserListAnswer();
    notifyListeners();
  }
}
