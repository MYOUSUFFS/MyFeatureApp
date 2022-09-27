// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_testing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyData _$MyDataFromJson(Map<String, dynamic> json) => MyData(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      requestStatus: json['requestStatus'] as bool?,
    );

Map<String, dynamic> _$MyDataToJson(MyData instance) => <String, dynamic>{
      'data': instance.data,
      'requestStatus': instance.requestStatus,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      totalAssignedJobs: json['totalAssignedJobs'] as int?,
      totalPendingJobs: json['totalPendingJobs'] as int?,
      totalCompletedJobs: json['totalCompletedJobs'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'totalAssignedJobs': instance.totalAssignedJobs,
      'totalPendingJobs': instance.totalPendingJobs,
      'totalCompletedJobs': instance.totalCompletedJobs,
    };
