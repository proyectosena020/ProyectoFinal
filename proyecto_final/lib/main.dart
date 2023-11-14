import 'package:flutter/material.dart';
import 'package:proyecto_final/Splash/SplashScreen.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:proyecto_final/theme/theme_manager.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:ui' as ui;

import 'generated/translations.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  final languageCode = ui.window.locale.languageCode;
  final countryCode = ui.window.locale.countryCode;
  String defaultLocale = languageCode;
  if(countryCode != null){
    defaultLocale += '_$countryCode';
  }

  Intl.defaultLocale = defaultLocale;
  //initializeDateFormatting('es_US', null);
  runApp(
      TranslationProvider(
          child:  MyApp(),
      )
  );
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  late Locale _locale;
  Locale get locale => _locale;

  @override
  void dispose(){
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState(){
    //_locale = Locale(widget.defaultLanguageCode, widget.defaultCountryCode);
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StayAway',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: SplashScreen(themeManager: _themeManager),
      localizationsDelegates: const[
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: LocaleSettings.supportedLocales,
      locale: TranslationProvider.of(context).flutterLocale,
    );
  }
}