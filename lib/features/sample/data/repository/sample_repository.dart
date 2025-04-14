import 'package:sample_arch/core/networking/api_error_handler.dart';
import 'package:sample_arch/core/networking/api_result.dart';
import 'package:sample_arch/features/sample/data/data_source/sample_web_service.dart';
import 'package:sample_arch/features/sample/data/models/sample_response_model.dart';

class SampleRepository {
  final SampleWebService _sampleApiService;

  SampleRepository(this._sampleApiService);

  Future<ApiResult<SampleResponseModel>> getSample() async {
    try {
      final response = await _sampleApiService.getSample();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
