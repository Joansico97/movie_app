import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/app.dart';
import 'package:movie_app/core/config/app_config.dart';

Future<void> main() async {
  await initConfig();
  runApp(const ProviderScope(child: MovieAppEvertec()));
}
