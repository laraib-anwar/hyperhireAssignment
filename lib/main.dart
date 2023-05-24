import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hyperhire/utils.dart';


import 'constants.dart';
import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hyper Hire',
      // initialRoute: LoginEmailScreen.routeName,
      // routes: routes,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: kPrimaryColor,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal),
        ),
        appBarTheme: AppTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
