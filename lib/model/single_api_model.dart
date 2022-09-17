// To parse this JSON data, do
//
//     final singleApi = singleApiFromJson(jsonString);

import 'dart:convert';

SingleApi singleApiFromJson(String str) => SingleApi.fromJson(json.decode(str));

String singleApiToJson(SingleApi data) => json.encode(data.toJson());

class SingleApi {
  SingleApi({
    this.id,
    this.column1,
  });

  int? id;
  String? column1;

  factory SingleApi.fromJson(Map<String, dynamic> json) => SingleApi(
        id: json["id"],
        column1: json["Column 1"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Column 1": column1,
      };
}
