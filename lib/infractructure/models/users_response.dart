import 'package:user_app/domain/entities/users_entity.dart';

class UsersResponse {
  UsersResponse({
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
  Address address;
  String phone;
  String name;
  Company company;
  int id;
  String email;
  String username;

  factory UsersResponse.fromJsonMap(Map<dynamic, dynamic> json) =>
      UsersResponse(
        website: json["website"],
        address: Address.fromJsonMap(json["address"]),
        phone: json["phone"],
        name: json["name"],
        company: Company.fromJsonMap(json["company"]),
        id: json["id"],
        email: json["email"],
        username: json["username"],
      );

  Map<dynamic, dynamic> toJson() => {
        "website": website,
        "address": address.toJson(),
        "phone": phone,
        "name": name,
        "company": company.toJson(),
        "id": id,
        "email": email,
        "username": username,
      };

  UsersEntity toUsersEntity() => UsersEntity(
        id: id,
        name: name,
        username: username,
        email: email,
        address: address.toAddressEntity(),
        phone: phone,
        website: website,
        company: company.toCompanyEntity(),
      );
}

class Address {
  Address({
    required this.zipcode,
    required this.geo,
    required this.suite,
    required this.city,
    required this.street,
  });

  String zipcode;
  Geo geo;
  String suite;
  String city;
  String street;

  factory Address.fromJsonMap(Map<dynamic, dynamic> json) => Address(
        zipcode: json["zipcode"],
        geo: Geo.fromJsonMap(json["geo"]),
        suite: json["suite"],
        city: json["city"],
        street: json["street"],
      );

  Map<dynamic, dynamic> toJson() => {
        "zipcode": zipcode,
        "geo": geo.toJson(),
        "suite": suite,
        "city": city,
        "street": street,
      };

  AddressEntity toAddressEntity() => AddressEntity(
        street: street,
        suite: suite,
        city: city,
        zipcode: zipcode,
        geo: geo.toGeoEntity(),
      );
}

class Geo {
  Geo({
    required this.lng,
    required this.lat,
  });

  String lng;
  String lat;

  factory Geo.fromJsonMap(Map<dynamic, dynamic> json) => Geo(
        lng: json["lng"],
        lat: json["lat"],
      );

  Map<dynamic, dynamic> toJson() => {
        "lng": lng,
        "lat": lat,
      };

  GeoEntity toGeoEntity() => GeoEntity(
        lat: lat,
        lng: lng,
      );
}

class Company {
  Company({
    required this.bs,
    required this.catchPhrase,
    required this.name,
  });

  String bs;
  String catchPhrase;
  String name;

  factory Company.fromJsonMap(Map<dynamic, dynamic> json) => Company(
        bs: json["bs"],
        catchPhrase: json["catchPhrase"],
        name: json["name"],
      );

  Map<dynamic, dynamic> toJson() => {
        "bs": bs,
        "catchPhrase": catchPhrase,
        "name": name,
      };

  CompanyEntity toCompanyEntity() => CompanyEntity(
        name: name,
        catchPhrase: catchPhrase,
        bs: bs,
      );
}
