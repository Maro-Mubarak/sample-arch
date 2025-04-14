import 'package:sample_arch/features/sample/data/models/sample_response_model.dart';
import 'package:sample_arch/features/sample/data/repository/sample_repository.dart';

import '../../../../../core/utils/enums/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_state.dart';

part 'sample_cubit.freezed.dart';

class SampleCubit extends Cubit<SampleState> {
  SampleCubit(this.sampleRepository) : super(const _Initial());
  final SampleRepository sampleRepository;

  void getSample() async {
    emit(state.copyWith(getSampleRequestState: RequestState.loading));
    final response = await sampleRepository.getSample();
    response.when(
      success: (sampleResponseSuccessModel) {
        emit(state.copyWith(
            getSampleRequestState: RequestState.loaded,
            sampleResponseModel: sampleResponseSuccessModel));
      },
      failure: (apiErrorModel) {
        emit(state.copyWith(
            getSampleRequestState: RequestState.error,
            errorMessage: apiErrorModel.getAllErrorMessages()));
      },
    );
  }
}
