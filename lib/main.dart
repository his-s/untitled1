import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/dataProvider.dart';
import 'package:untitled1/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataProvider>(
      create: (_) => DataProvider(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => HomeScreen(),
        },
      ),
    );
  }
}
