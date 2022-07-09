import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../constants/constants.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 5,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Card(
              // color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 169, 146, 0.14),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/Bronze_Author_1.png',
                              width: 80,
                              height: 80,
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bronze 3',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: purple,
                              ),
                            ),
                            Text(
                              'Task Completed : 150/300',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: LinearPercentIndicator(
                        leading: Text(
                          'Lvl 21',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: black,
                            fontSize: 16,
                          ),
                        ),
                        trailing: Text(
                          'Lvl 22',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: black,
                            fontSize: 16,
                          ),
                        ),
                        lineHeight: 17,
                        linearGradient: const LinearGradient(
                          colors: <Color>[
                            Color.fromRGBO(255, 227, 2, 1),
                            Color.fromRGBO(255, 155, 48, 1),
                          ],
                        ),
                        backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                        barRadius: const Radius.circular(10),
                        percent: .5,
                        animation: true,
                        animationDuration: 1000,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                // shrinkWrap: true,
                childAspectRatio: (0.8),
                shrinkWrap: true,
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     mainAxisSpacing: 10,
                //     crossAxisSpacing: 10),
                crossAxisCount: 2,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(69, 126, 242, 0.36),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.workSans(
                                color: purple,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/images/Reach_for_the_Stars_1.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Reach for stars",
                            style: GoogleFonts.workSans(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            // height: 40,
                            width: MediaQuery.of(context).size.width * 0.32,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Claim',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(52, 64, 68, 0.36),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.workSans(
                                color: purple,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/images/Ceiling_Breaker_1.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Celling Breaker",
                            style: GoogleFonts.workSans(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            // height: 40,
                            width: MediaQuery.of(context).size.width * 0.32,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Claim',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(91, 66, 143, 0.21),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.workSans(
                                color: purple,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/images/People_Person_Tier.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "People's Person",
                            style: GoogleFonts.workSans(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            // height: 40,
                            width: MediaQuery.of(context).size.width * 0.32,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Claim',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(91, 66, 143, 0.21),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.workSans(
                                color: purple,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/images/Market_Spelunker_1.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Reach for stars",
                            style: GoogleFonts.workSans(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            // height: 40,
                            width: MediaQuery.of(context).size.width * 0.32,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Claim',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
