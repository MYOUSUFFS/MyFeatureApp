// To parse this JSON data, do
//
//     final singleApi = singleApiFromJson(jsonString);

import 'dart:convert';

SingleApi singleApiFromJson(String str) => SingleApi.fromJson(json.decode(str));

String singleApiToJson(SingleApi data) => json.encode(data.toJson());

class SingleApi {
  SingleApi({
    this.name,
    this.phoneNumber,
  });

  String? name;
  int? phoneNumber;

  factory SingleApi.fromJson(Map<String, dynamic> json) => SingleApi(
        name: json["name"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone_number": phoneNumber,
      };
}
