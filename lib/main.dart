import 'package:flutter/material.dart';
import 'package:tudoom/screens/Taccount/t_account.dart';
import 'package:tudoom/screens/login%20and%20forget%20pass%20screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TAccountScreen(),
    );
  }
}
