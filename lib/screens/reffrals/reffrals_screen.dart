import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/screens/reffrals/my_reffrals.dart';
import 'package:tudoom/screens/reffrals/reffer.dart';

import '../../constants/constants.dart';

class ReffralsScreen extends StatefulWidget {
  ReffralsScreen({Key? key}) : super(key: key);

  @override
  State<ReffralsScreen> createState() => _ReffralsScreenState();
}

class _ReffralsScreenState extends State<ReffralsScreen> {
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
            'Reffrals',
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
                      text: 'Reffer',
                      height: 60,
                    ),
                    Tab(
                      text: 'My Reffrals',
                      height: 60,
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.82,
                  child: TabBarView(children: [
                    Reffer(),
                    MyReffralsScreen(),
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
