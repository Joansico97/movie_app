import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/config/app_config.dart';
import 'package:movie_app/core/constants/app_constants.dart';
import 'package:movie_app/core/routes/router.dart';
import 'package:movie_app/core/utils/utils.dart';

class MovieAppEvertec extends ConsumerWidget {
  const MovieAppEvertec({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: 'Poppins',
        useMaterial3: true,
        primaryColor: AppColors.primary,
      ),
      scrollBehavior: AppScrollBehavior(),
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      routerConfig: router,
    );
  }
}
