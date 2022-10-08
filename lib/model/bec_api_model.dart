import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'bec_api_model.g.dart';
JobDetails jobDetailsFromJson(String str) =>
    JobDetails.fromJson(json.decode(str));

String jobDetailsToJson(JobDetails data) => json.encode(data.toJson());

@JsonSerializable()
class JobDetails {
  JobDetails({
    this.data,
    this.requestStatus,
  });

  Data? data;
  bool? requestStatus;

  factory JobDetails.fromJson(Map<String, dynamic> json) =>
      JobDetails(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      requestStatus: json['requestStatus'] as bool?,
    );

  Map<String, dynamic> toJson() => <String, dynamic>{
      'data': data,
      'requestStatus': requestStatus,
    };
}

@JsonSerializable()
class Data {
  Data( {
    this.assignedJobs,
    this.pendingJobs,
    this.completedJobs,
  });

  List<Job>? assignedJobs;
  List<Job>? pendingJobs;
  List<Job>? completedJobs;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
      assignedJobs: (json['assignedJobs'] as List<dynamic>?)
          ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
      pendingJobs: (json['pendingJobs'] as List<dynamic>?)
          ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
      completedJobs: (json['completedJobs'] as List<dynamic>?)
          ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

  Map<String, dynamic> toJson() => <String, dynamic>{
      'assignedJobs': assignedJobs,
      'pendingJobs': pendingJobs,
      'completedJobs': completedJobs,
    };
}

@JsonSerializable()
class Job {
  Job({
    this.id,
    this.fname,
    this.email,
    this.userId,
    // this.jobDouble,
  });

  int? id;
  String? fname;
  String? email;
  String? userId;
  // double? jobDouble;

  factory Job.fromJson(Map<String, dynamic> json) => Job(
      id: json['id'] as int?,
      fname: json['fname'] as String?,
      email: json['email'] as String?,
      userId: json['userId'] as String?,
    );

  Map<String, dynamic> toJson() => <String, dynamic>{
      'id': id,
      'fname': fname,
      'email': email,
      'userId': userId,
    };
}
