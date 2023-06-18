import 'package:azkar_app/Screens/home_screen.dart';
import 'package:azkar_app/Screens/info_screen.dart';
import 'package:azkar_app/Screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale('ar'),

      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => LaunchScreen(),
        '/home_screen' : (context) => HomeScreen(),
        '/info_screen' : (context) => InfoScreen(),
      },
    );
  }
}
