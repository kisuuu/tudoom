import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';

class LeadboardScreen extends StatelessWidget {
  const LeadboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: white,
        ),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'Add Credit',
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
            children: const [],
          ),
        ),
      ),
    );
  }
}
