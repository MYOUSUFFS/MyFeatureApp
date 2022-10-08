import 'package:json_annotation/json_annotation.dart';
part 'job_testing_model.g.dart';

@JsonSerializable()
class MyData {
  MyData({
    this.data,
    this.requestStatus,
  });

  Data? data;
  bool? requestStatus;
  factory MyData.fromJson(Map<String, dynamic> json) => _$MyDataFromJson(json);
  Map<String, dynamic> toJson() => _$MyDataToJson(this);
}

@JsonSerializable()
class Data {
  Data({
    this.totalAssignedJobs,
    this.totalPendingJobs,
    this.totalCompletedJobs,
  });

  int? totalAssignedJobs;
  int? totalPendingJobs;
  int? totalCompletedJobs;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
