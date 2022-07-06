import 'package:flutter/material.dart';
import 'package:tudoom/screens/add%20credit/add_credit.dart';
import 'package:tudoom/screens/become%20trader/Become_Trader.dart';
import 'package:tudoom/screens/login%20and%20forget%20pass%20screen/login_screen.dart';
import 'package:tudoom/screens/market/market_place.dart';
import 'package:tudoom/screens/new%20post/new_post.dart';
import 'package:tudoom/screens/notification/notification.dart';
import 'package:tudoom/screens/profile/common_profile.dart';
import 'package:tudoom/screens/profile/profile_page.dart';
import 'package:tudoom/screens/profile/tudoom_profile.dart';
import 'package:tudoom/screens/reffrals/reffrals_screen.dart';
import 'package:tudoom/screens/stars%20and%20badges/star_and_badges.dart';
import 'package:tudoom/screens/trader%20panel/trader_panel.dart';
import 'package:tudoom/screens/tudoom%20world/tudoom_world.dart';

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
      home: NotificationScreen(),
    );
  }
}
