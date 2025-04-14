import 'package:sample_arch/features/sample/data/models/sample_response_model.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'sample_web_service.g.dart';

@RestApi()
abstract class SampleWebService {
  factory SampleWebService(Dio dio, {String baseUrl}) = _SampleWebService;

  @GET("fact")
  Future<SampleResponseModel> getSample();
}
