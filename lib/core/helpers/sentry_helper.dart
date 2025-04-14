import 'package:sentry_flutter/sentry_flutter.dart';

class SentryHelper {
  static const String sentryDsn =
      'https://8081665d617bca450ace46f8e57524ef@o4508939228545025.ingest.de.sentry.io/4508939349000272';
  static Future<void> init() async {
    await SentryFlutter.init(
      (options) {
        options.dsn = sentryDsn;
      },
    );
  }
}
