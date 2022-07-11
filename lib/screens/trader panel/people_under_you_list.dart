import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/trader%20panel/trader_panel.dart';

class PeopleUnderYouListScreen extends StatefulWidget {
  const PeopleUnderYouListScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PeopleUnderYouListScreen> createState() =>
      _PeopleUnderYouListScreenState();
}

class _PeopleUnderYouListScreenState extends State<PeopleUnderYouListScreen> {
  List<PeopleUnderYou> peopleunderyou = [
    PeopleUnderYou(
      country: 'America',
      image: 'assets/images/peopleunderyou1.jpg',
      username: 'thementalpower',
    ),
    PeopleUnderYou(
      country: 'India',
      image: 'assets/images/peopleunderyou2.jpg',
      username: 'fitnessdrilling',
    ),
    PeopleUnderYou(
      country: 'anime.sadsoul',
      image: 'assets/images/peopleunderyou3.jpg',
      username: 'anime.sadsoul',
    ),
    PeopleUnderYou(
      country: 'India',
      image: 'assets/images/peopleunderyou2.jpg',
      username: 'fitnessdrilling',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(color: white),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'People Under You',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mentor',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(
                      // Icons.arrow_right_alt_rounded,
                      CupertinoIcons.arrow_right,
                      size: 28,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (OverscrollIndicatorNotification overscroll) {
                    overscroll.disallowIndicator();
                    return true;
                  },
                  child: ListView.builder(
                    itemCount: peopleunderyou.length,
                    itemBuilder: (context, index) {
                      final peoplelist = peopleunderyou[index];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(peoplelist.image),
                          ),
                          title: Text(
                            peoplelist.username,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            peoplelist.country,
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
