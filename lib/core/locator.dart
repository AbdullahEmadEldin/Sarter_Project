import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:starter_project/core/localization/localization_manager.dart';
import 'package:starter_project/core/theme/app_theme.dart';
import 'package:starter_project/core/theme/theme_manager.dart';

final locator = GetIt.instance;
ThemeData _appTheme = AppThemes.lightAppTheme;
LocalizationManager _appLanguage = LocalizationManager();
ThemeManager _themeManager = ThemeManager();

void setUp() {
  locator.registerSingleton<ThemeData>(_appTheme);
  locator.registerLazySingleton<ThemeManager>(() => _themeManager);
  locator.registerLazySingleton<LocalizationManager>(() => _appLanguage);
}
