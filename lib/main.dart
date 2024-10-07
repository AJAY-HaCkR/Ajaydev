import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/categories.dart';
import './providers/news.dart';
import './screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: News(),
        ),
        ChangeNotifierProvider.value(
          value: Categories(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData(
  primaryColor: Color(0xFF93B2FE),
  primaryColorLight: Color(0xFFCCCFF5),
  colorScheme: ColorScheme(
    surface: Color(0xFFFFFFFF),
    brightness: Brightness.light, // or Brightness.dark
    primary: Color(0xFF93B2FE),
    onPrimary: Color(0xFF000000), // or any other suitable color
    secondary: Color(0xFFAC7FFC),
    onSecondary: Color(0xFF000000), // or any other suitable color
    error: Color(0xFFFF0000), // or any other suitable color
    onError: Color(0xFF000000), // or any other suitable color
    onSurface: Color(0xFF000000), // or any other suitable color
  ),
),
        home: Homepage(),
      ),
    );
  }
}
