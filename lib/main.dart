import '/constant.dart';
import '/screens/home.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental App',
      theme: ThemeData(scaffoldBackgroundColor: kBackgroundColor),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
