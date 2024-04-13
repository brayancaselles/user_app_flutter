import 'dart:ffi';

import 'address.dart';
import 'company.dart';

class Users {
  final Int id;
  final String name;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  Users(this.id, this.name, this.email, this.address, this.phone, this.website,
      this.company);
}
