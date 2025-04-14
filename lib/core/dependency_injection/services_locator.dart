import 'package:dio/dio.dart';
import 'package:sample_arch/core/dependency_injection/get_it_instance.dart';
import 'package:sample_arch/core/networking/dio_factory.dart';
import 'package:sample_arch/features/sample/sample_injection.dart';

class ServicesLocator {
  static Future<void> init() async {
    //dio
    sl.registerLazySingleton<Dio>(() => DioFactory.getDio());
    //sample injection
    SampleInjection.init();
  }
}
