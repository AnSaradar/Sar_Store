import 'package:flutter/material.dart';
import 'package:sar_store1/config/app_router.dart';
import 'package:sar_store1/config/theme.dart';
import 'package:sar_store1/screens/home/home_screen.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAR_STORE',
      theme: themeData(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: HomeScreen() ,
    );
  }
}









