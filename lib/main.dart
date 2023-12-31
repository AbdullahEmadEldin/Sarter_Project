import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:starter_project/core/localization/localization_manager.dart';
import 'package:starter_project/core/locator.dart';
import 'package:starter_project/core/navigation/router.dart';
import 'package:starter_project/core/theme/app_theme.dart';
import 'package:starter_project/core/theme/theme_manager.dart';
import 'package:starter_project/generated/l10n.dart';

void main() {
  setUp();
  runApp(const StarterProject());
}

class StarterProject extends StatefulWidget {
  const StarterProject({super.key});

  @override
  State<StarterProject> createState() => _StarterProjectState();
}

class _StarterProjectState extends State<StarterProject> {
  @override

  ///these listners for switching theme
  void dispose() {
    locator.get<ThemeManager>().removeListener(themeListener);
    locator.get<LocalizationManager>().removeListener(languageLisnter);
    super.dispose();
  }

  @override
  void initState() {
    locator.get<ThemeManager>().addListener(themeListener);
    locator.get<LocalizationManager>().addListener(languageLisnter);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  languageLisnter() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router(),
      locale: locator.get<LocalizationManager>().appLanguage,
      debugShowCheckedModeBanner: false,
      theme: locator.get<ThemeData>(),
      darkTheme: AppThemes.darkAppTheme,
      themeMode: locator.get<ThemeManager>().themeMode,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
