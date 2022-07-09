import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/trader%20panel/people_under_you_list.dart';

class TraderPanel extends StatefulWidget {
  const TraderPanel({Key? key}) : super(key: key);

  @override
  State<TraderPanel> createState() => _TraderPanelState();
}

class _TraderPanelState extends State<TraderPanel> {
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
          'jerry.cisco',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.more_vert,
              size: 30,
            ),
          ),
        ],
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
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                    // borderRadius: BorderRadius.all(
                    //   Radius.circular(
                    //     15,
                    //   ),
                    // ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(
                          91,
                          66,
                          143,
                          0.3,
                        ),
                        blurRadius: 30.0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              TraderPanelHeaderCard(
                                leftText: 'Badge',
                                rightText: 'Headmentor',
                              ),
                              TraderPanelHeaderCard(
                                leftText: 'Balance',
                                rightText: '3300 \$',
                              ),
                              TraderPanelHeaderCard(
                                leftText: 'Monthly tral',
                                rightText: '200\$',
                              ),
                              TraderPanelHeaderCard(
                                leftText: 'Membership ended on',
                                rightText: '24/02/22',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: -20,
                        bottom: -10,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: circlecolor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 150,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: circlecolor,
                          ),
                        ),
                      ),
                      Positioned(
                        left: -30,
                        bottom: -30,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: circlecolor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 150,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: circlecolor,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 130,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: circlecolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PeopleUnderYouListScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'People under you',
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

class TraderPanelHeaderCard extends StatelessWidget {
  String leftText;
  String rightText;
  TraderPanelHeaderCard({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          // 'Badge',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 2,
          ),
        ),
        Text(
          rightText,
          // 'Headmentor',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: purple,
          ),
        ),
      ],
    );
  }
}

class PeopleUnderYou {
  final String username;
  final String country;
  final String image;

  PeopleUnderYou({
    required this.country,
    required this.image,
    required this.username,
  });
}
