import 'package:exercici2_mix/src/pages/alert_page.dart';
import 'package:exercici2_mix/src/pages/avatar_page.dart';
import 'package:exercici2_mix/src/pages/home_page.dart';
import 'package:exercici2_mix/src/pages/home_temp.dart';
import 'package:exercici2_mix/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      // home: HomePage(),
      initialRoute: '/',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES'), 
        Locale('ca', 'CA'),// Spanish, no country code
      ],
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Hem anat a: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}