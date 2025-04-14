import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_arch/core/dependency_injection/get_it_instance.dart';
import 'package:sample_arch/core/shared/widgets/custom_button.dart';
import 'package:sample_arch/core/utils/enums/enums.dart';
import 'package:sample_arch/features/sample/presentation/logic/sample_cubit.dart';

class SampleButton extends StatelessWidget {
  const SampleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final SampleCubit sampleCubit = sl<SampleCubit>();
    return BlocBuilder<SampleCubit, SampleState>(
      buildWhen: (previous, current) =>
          previous.getSampleRequestState != current.getSampleRequestState,
      builder: (context, state) {
        return CustomButton(
          loading: state.getSampleRequestState == RequestState.loading,
          onPressed: () {
            sampleCubit.getSample();
          },
          text: "Get sample",
        );
      },
    );
  }
}
