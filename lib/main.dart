import 'package:e_commerce_app_ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          cardTheme:const CardThemeData(color: Colors.white),
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,

        home: HomeScreen(),

    );
  }
}
