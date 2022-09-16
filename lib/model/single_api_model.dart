import 'package:json_annotation/json_annotation.dart';
part 'single_api_model.g.dart';

@JsonSerializable()
class SingleApi {
  String? data;
  String? support;
  SingleApi({this.data, this.support});
  factory SingleApi.fromJson(Map<String, dynamic> json) =>
      _$SingleApiFromJson(json);
  Map<String, dynamic> toJson() => _$SingleApiToJson(this);
}
