import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class RoomInfoScreen extends StatefulWidget {
  const RoomInfoScreen({Key? key}) : super(key: key);

  @override
  State<RoomInfoScreen> createState() => _RoomInfoScreenState();
}

class _RoomInfoScreenState extends State<RoomInfoScreen> {
  bool roomNotification = false;
  bool publicKick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(color: white),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'Room info',
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
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 20,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                RoomInfoLabel(
                  leftText: 'Owner',
                  rightText: 'Tudoom',
                ),
                const SizedBox(
                  height: 20,
                ),
                RoomInfoLabel(
                  leftText: 'Capacity',
                  rightText: '50',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Room Notifications',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: borderColor,
                      ),
                    ),
                    FlutterSwitch(
                      width: 40.0,
                      height: 18.0,
                      // valueFontSize: 12.0,
                      toggleSize: 12.0,
                      toggleColor: black,
                      activeToggleColor: white,
                      activeColor: Colors.grey,
                      value: roomNotification,
                      onToggle: (val) {
                        setState(() {
                          roomNotification = val;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                RoomInfoLabel(
                  leftText: 'Lock Level',
                  rightText: '0',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Public Kick',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: borderColor,
                      ),
                    ),
                    FlutterSwitch(
                      width: 40.0,
                      height: 18.0,
                      // valueFontSize: 12.0,
                      toggleSize: 12.0,
                      toggleColor: black,
                      activeToggleColor: white,
                      activeColor: Colors.grey,
                      value: publicKick,
                      onToggle: (val) {
                        setState(() {
                          publicKick = val;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoomInfoLabel extends StatelessWidget {
  String leftText;
  String rightText;
  RoomInfoLabel({
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
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: borderColor,
          ),
        ),
        Text(
          rightText,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: purple,
          ),
        ),
      ],
    );
  }
}
