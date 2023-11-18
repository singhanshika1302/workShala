// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  String email;
  String password;
  String name;
  String number;

  DataModel({
    required this.email,
    required this.password,
    required this.name,
    required this.number,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    email: json["email"],
    password: json["password"],
    name: json["name"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "name": name,
    "number": number,
  };
}
