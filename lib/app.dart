import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/config/app_config.dart';
import 'package:movie_app/core/constants/app_constants.dart';
import 'package:movie_app/core/routes/router.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/data/providers/providers.dart';
import 'package:movie_app/gen/fonts.gen.dart';
import 'package:movie_app/gen/l10n.dart';

class MovieAppEvertec extends ConsumerWidget {
  const MovieAppEvertec({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = ref.watch(localeProvider);
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF201E1C),
        fontFamily: FontFamily.poppins,
        useMaterial3: true,
        primaryColor: AppColors.primary,
      ),
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      supportedLocales: L10n.delegate.supportedLocales,
      scrollBehavior: AppScrollBehavior(),
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      routerConfig: router,
    );
  }
}
