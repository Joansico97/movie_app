import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/core/constants/constants.dart';
import 'package:movie_app/gen/l10n.dart';

final localeProvider = NotifierProvider<_LocaleProvider, Locale>(() => _LocaleProvider());

class _LocaleProvider extends Notifier<Locale> {
  @override
  Locale build() {
    final sessionBox = Hive.box(LocalStorageConstants.sessionBox).get(LocalStorageConstants.localeKey);
    final String defaultLocale = sessionBox ?? Platform.localeName;
    return Locale(defaultLocale.split('_')[0]);
  }

  Future<void> changeLocale(Locale e) async {
    final sessionExpDate = Hive.box(LocalStorageConstants.sessionBox);
    await sessionExpDate.put(LocalStorageConstants.localeKey, e.languageCode);
    state = L10n.delegate.supportedLocales.contains(e) ? e : const Locale('es');
  }
}
