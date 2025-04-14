part of 'sample_cubit.dart';

@freezed
class SampleState<T> with _$SampleState<T> {
  const factory SampleState({
    @Default(RequestState.initial) RequestState getSampleRequestState,
    //sample response
    SampleResponseModel? sampleResponseModel,
    //error message
    @Default('') String errorMessage,
  }) = _Initial;
}
