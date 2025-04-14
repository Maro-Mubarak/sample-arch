import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_arch/core/resources/values_manager.dart';
import 'package:sample_arch/features/sample/presentation/logic/sample_cubit.dart';
import 'package:sample_arch/features/sample/presentation/ui/widget/sample_button.dart';
import 'package:sample_arch/features/sample/presentation/ui/widget/sample_widget.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SampleCubit, SampleState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.all(AppSize.s16),
            padding: EdgeInsets.all(AppSize.s32),
            child: Center(
              child: Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SampleWidget(fact: state.sampleResponseModel?.fact ?? ''),
                  SampleButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
