import 'package:dio/dio.dart';
import 'package:user_app/domain/entities/users_entity.dart';
import 'package:user_app/infractructure/models/users_response.dart';

class GetUsersAnswer {
  final _dio = Dio();

  Future<List<UsersEntity>> getAnswer() async {
    final response =
        await _dio.get('https://jsonplaceholder.typicode.com/users');

    List<Map<String, dynamic>> jsonResponse =
        List<Map<String, dynamic>>.from(response.data);

    List<UsersResponse> userList =
        jsonResponse.map((json) => UsersResponse.fromJsonMap(json)).toList();

    print(userList.map((user) => user.toUsersEntity()).toList());

    return userList.map((user) => user.toUsersEntity()).toList();
  }
}
