import 'package:dio/dio.dart';
import 'package:sample_arch/core/dependency_injection/get_it_instance.dart';
import 'package:sample_arch/features/sample/data/data_source/sample_web_service.dart';
import 'package:sample_arch/features/sample/data/repository/sample_repository.dart';
import 'package:sample_arch/features/sample/presentation/logic/sample_cubit.dart';

class SampleInjection {
  static Future<void> init() async {
    //data source injection
    sl.registerLazySingleton<SampleWebService>(
        () => SampleWebService(sl<Dio>()));
    //repository injection
    sl.registerLazySingleton<SampleRepository>(
        () => SampleRepository(sl<SampleWebService>()));
    //cubit injection
    sl.registerLazySingleton<SampleCubit>(
        () => SampleCubit(sl<SampleRepository>()));
  }
}
