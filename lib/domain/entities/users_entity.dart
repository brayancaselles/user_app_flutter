class UsersEntity {
  UsersEntity({
    required this.website,
    required this.address,
    required this.phone,
    required this.name,
    required this.company,
    required this.id,
    required this.email,
    required this.username,
  });

  String website;
  AddressEntity address;
  String phone;
  String name;
  CompanyEntity company;
  int id;
  String email;
  String username;
}

class AddressEntity {
  AddressEntity({
    required this.zipcode,
    required this.geo,
    required this.suite,
    required this.city,
    required this.street,
  });

  String zipcode;
  GeoEntity geo;
  String suite;
  String city;
  String street;
}

class GeoEntity {
  GeoEntity({
    required this.lng,
    required this.lat,
  });

  String lng;
  String lat;
}

class CompanyEntity {
  CompanyEntity({
    required this.bs,
    required this.catchPhrase,
    required this.name,
  });

  String bs;
  String catchPhrase;
  String name;
}
