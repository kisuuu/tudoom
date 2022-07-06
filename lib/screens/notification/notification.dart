import 'package:emojis/emoji.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/profile/tudoom_avatar.dart';
import 'package:tudoom/screens/trader%20panel/people_under_you_list.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: white),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'Notification',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
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
          decoration: BoxDecoration(
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Follow requests',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(
                              0,
                              0,
                              0,
                              1,
                            ),
                          ),
                        ),
                        Text(
                          'See all requests',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: purple,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            children: const [
                              CircleAvatar(
                                radius: 48, // Image radius
                                backgroundImage: AssetImage(
                                    'assets/images/hospitallab.jpg.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Hospital Labs'),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              CircleAvatar(
                                radius: 48, // Image radius
                                backgroundImage: AssetImage(
                                    'assets/images/hospitallab.jpg.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Hospital Labs'),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              CircleAvatar(
                                radius: 48, // Image radius
                                backgroundImage: AssetImage(
                                    'assets/images/hospitallab.jpg.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Hospital Labs'),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              CircleAvatar(
                                radius: 48, // Image radius
                                backgroundImage: AssetImage(
                                    'assets/images/hospitallab.jpg.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Hospital Labs'),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              CircleAvatar(
                                radius: 48, // Image radius
                                backgroundImage: AssetImage(
                                    'assets/images/hospitallab.jpg.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Hospital Labs'),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
