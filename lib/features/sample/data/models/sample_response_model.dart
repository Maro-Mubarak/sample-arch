import 'package:json_annotation/json_annotation.dart';

part 'sample_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SampleResponseModel {
  String fact;
  int length;

  SampleResponseModel({required this.fact, required this.length});

  factory SampleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SampleResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SampleResponseModelToJson(this);
}
