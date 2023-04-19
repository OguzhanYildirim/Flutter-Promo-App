import 'package:flutter/material.dart';
import 'package:promo_app/constants/global_variables.dart';
import 'package:promo_app/features/auth/screens/auth_screen.dart';
import 'package:promo_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Promo App',
        theme: ThemeData(
            scaffoldBackgroundColor: GlobalVariables.backgroundColor,
            colorScheme: const ColorScheme.light(
                primary: GlobalVariables.secondaryColor),
            appBarTheme: const AppBarTheme(
                elevation: 0, iconTheme: IconThemeData(color: Colors.black))
            //primarySwatch: Colors.blue,
            ),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const AuthScreen());
  }
}
