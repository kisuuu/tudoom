import 'dart:io';

import 'package:emojis/emoji.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/profile/tudoom_avatar.dart';

class TraderPanel extends StatefulWidget {
  const TraderPanel({Key? key}) : super(key: key);

  @override
  State<TraderPanel> createState() => _TraderPanelState();
}

class _TraderPanelState extends State<TraderPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: white),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Card(
                  color: white,
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
              ],
            ),
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
