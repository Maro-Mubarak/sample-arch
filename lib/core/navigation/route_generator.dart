import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_arch/core/dependency_injection/get_it_instance.dart';
import 'package:sample_arch/core/navigation/named_routes.dart';
import 'package:sample_arch/core/navigation/route_observer.dart';
import 'package:sample_arch/features/sample/presentation/logic/sample_cubit.dart';
import 'package:sample_arch/features/sample/presentation/ui/screens/sample_screen.dart';
import 'package:sample_arch/features/splash/presentation/ui/screens/splash_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class RouterGenerator {
  static final GoRouter router = GoRouter(
      navigatorKey: navigatorKey,
      observers: [AppNavigationObserver()],

      // navigatorKey: Go.navigatorKey,
      initialLocation: NamedRoutes.splash.routeName,
      routes: <RouteBase>[
        GoRoute(
          path: NamedRoutes.splash.routeName,
          name: NamedRoutes.splash.routeName,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
            path: NamedRoutes.sample.routeName,
            name: NamedRoutes.sample.routeName,
            builder: (context, state) => BlocProvider.value(
                  value: sl<SampleCubit>(),
                  child: const SampleScreen(),
                )),
      ]);
}
