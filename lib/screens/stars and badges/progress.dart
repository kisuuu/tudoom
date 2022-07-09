import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../constants/constants.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key}) : super(key: key);
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
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                // shrinkWrap: true,
                childAspectRatio: (0.75),
                shrinkWrap: true,

                crossAxisCount: 2,
                children: [
                  Badges(
                    color: const Color.fromRGBO(69, 126, 242, 0.36),
                    image: 'assets/images/Master_Collector.png',
                    subtitle: 'Reach for stars',
                    task: 'Task 1/5',
                  ),
                  Badges(
                    color: const Color.fromRGBO(69, 126, 242, 0.36),
                    image: 'assets/images/Collectionist.png',
                    subtitle: 'Reach for stars',
                    task: 'Task 3/5',
                  ),
                  Badges(
                    color: const Color.fromRGBO(69, 126, 242, 0.36),
                    image: 'assets/images/Reach_for_the_Stars_1.png',
                    subtitle: 'Reach for stars',
                    task: '',
                  ),
                  Badges(
                    color: const Color.fromRGBO(52, 64, 68, 0.36),
                    image: 'assets/images/Ceiling_Breaker_1.png',
                    subtitle: 'Celling Breaker',
                    task: '',
                  ),
                  Badges(
                    color: const Color.fromRGBO(91, 66, 143, 0.21),
                    image: 'assets/images/People_Person_Tier.png',
                    subtitle: "People's Person",
                    task: '',
                  ),
                  Badges(
                    color: const Color.fromRGBO(91, 66, 143, 0.21),
                    image: 'assets/images/Market_Spelunker_1.png',
                    subtitle: 'Market Spelunker',
                    task: '',
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

class Badges extends StatelessWidget {
  String image;
  String task;
  String subtitle;
  Color color;
  Badges({
    Key? key,
    required this.color,
    required this.image,
    required this.task,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              task,
              style: GoogleFonts.workSans(
                color: black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              // 'assets/images/Reach_for_the_Stars_1.png',
              image,
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              // "Reach for stars",
              subtitle,
              style: GoogleFonts.workSans(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            LinearPercentIndicator(
              lineHeight: 17,
              linearGradient: const LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(255, 227, 2, 1),
                  Color.fromRGBO(255, 155, 48, 1),
                ],
              ),
              backgroundColor: white,
              barRadius: const Radius.circular(10),
              percent: .85,
              animation: true,
              animationDuration: 1000,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '85% Done',
              style: GoogleFonts.workSans(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
