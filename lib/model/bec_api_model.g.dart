// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'bec_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobDetails _$JobDetailsFromJson(Map<String, dynamic> json) => JobDetails(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      requestStatus: json['requestStatus'] as bool?,
    );

Map<String, dynamic> _$JobDetailsToJson(JobDetails instance) =>
    <String, dynamic>{
      'data': instance.data,
      'requestStatus': instance.requestStatus,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
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

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'assignedJobs': instance.assignedJobs,
      'pendingJobs': instance.pendingJobs,
      'completedJobs': instance.completedJobs,
    };

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      id: json['id'] as int?,
      fname: json['fname'] as String?,
      email: json['email'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'id': instance.id,
      'fname': instance.fname,
      'email': instance.email,
      'userId': instance.userId,
    };
