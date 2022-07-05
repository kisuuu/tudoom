import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/screens/reffrals/my_reffrals.dart';
import 'package:tudoom/screens/reffrals/reffer.dart';
import 'package:tudoom/screens/stars%20and%20badges/completed_screen.dart';
import 'package:tudoom/screens/stars%20and%20badges/progress.dart';

import '../../constants/constants.dart';

class StarAndBadgesScreen extends StatefulWidget {
  StarAndBadgesScreen({Key? key}) : super(key: key);

  @override
  State<StarAndBadgesScreen> createState() => _StarAndBadgesScreenState();
}

class _StarAndBadgesScreenState extends State<StarAndBadgesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const BackButton(
            color: white,
          ),
          centerTitle: true,
          backgroundColor: purple,
          title: Text(
            'Stars and Badg es',
            style: GoogleFonts.poppins(
              color: white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          color: purple,
          child: Container(
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  15,
                ),
                topRight: Radius.circular(
                  15,
                ),
              ),
            ),
            child: Column(
              children: [
                // SizedBox(
                //   height: 15,
                // ),
                TabBar(
                  labelColor: purple,
                  indicatorWeight: 2,
                  unselectedLabelColor: const Color.fromRGBO(79, 91, 91, 0.3),
                  indicatorColor: purple,
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    // color: purple,
                    fontWeight: FontWeight.w600,
                  ),
                  tabs: [
                    Tab(
                      text: 'Completed',
                      height: 60,
                    ),
                    Tab(
                      text: 'Progress',
                      height: 60,
                    ),
                  ],
                ),
                Container(
                  color: Colors.amber,
                  height: MediaQuery.of(context).size.height * 0.82,
                  child: TabBarView(children: [
                    CompletedScreen(),
                    ProgressScreen(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
