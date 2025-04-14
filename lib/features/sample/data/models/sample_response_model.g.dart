// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleResponseModel _$SampleResponseModelFromJson(Map<String, dynamic> json) =>
    SampleResponseModel(
      fact: json['fact'] as String,
      length: (json['length'] as num).toInt(),
    );

Map<String, dynamic> _$SampleResponseModelToJson(
        SampleResponseModel instance) =>
    <String, dynamic>{
      'fact': instance.fact,
      'length': instance.length,
    };
