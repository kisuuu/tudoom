import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class BecomeTraderScreen extends StatelessWidget {
  const BecomeTraderScreen({Key? key}) : super(key: key);

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
          'Become Trader',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
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
              horizontal: 25.0,
              vertical: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          15,
                        ),
                      ),
                      border: Border.all(
                        color: becometrader,
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Center(
                                child: Text(
                                  'Headmentor  ',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Container(
                                width: 9,
                                height: 9,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(165, 62, 246, 1),
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.info_outline,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: becometraderdot,
                                  ),
                                ),
                                Text(
                                  "  \$1000 ",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  " per month",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: becometrader,
                              thickness: 1,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: becometraderdot,
                                  ),
                                ),
                                Text(
                                  "  \$2900 ",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  " per 3 months",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: becometrader,
                              thickness: 1,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: becometraderdot,
                                  ),
                                ),
                                Text(
                                  "  \$12000 ",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  " per 12 months",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        25,
                                      ),
                                    ),
                                    color: Color.fromRGBO(0, 0, 0, 0.07),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 3,
                                    ),
                                    child: Text(
                                      'BEST DEAL',
                                      style: GoogleFonts.urbanist(
                                          color: Colors.red,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: becometrader,
                              thickness: 1,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check,
                                size: 28,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Id varius eget enim, nisi, dui ac",
                                style: GoogleFonts.urbanist(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check,
                                size: 28,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Id varius eget enim, nisi, dui ac",
                                style: GoogleFonts.urbanist(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check,
                                size: 28,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Id varius eget enim, nisi, dui ac",
                                style: GoogleFonts.urbanist(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: purple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              // fixedSize: const Size(100, 50),
                            ),
                            onPressed: () {},
                            child: SizedBox(
                              child: Text(
                                "Buy now",
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          15,
                        ),
                      ),
                      border: Border.all(
                        color: becometrader,
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Center(
                                child: Text(
                                  'Mentor  ',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Container(
                                width: 9,
                                height: 9,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(254, 126, 109, 1),
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.info_outline,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: becometraderdot,
                                  ),
                                ),
                                Text(
                                  "  \$1000 ",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  " per month",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: becometrader,
                              thickness: 1,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: becometraderdot,
                                  ),
                                ),
                                Text(
                                  "  \$2900 ",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  " per 3 months",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: becometrader,
                              thickness: 1,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: becometraderdot,
                                  ),
                                ),
                                Text(
                                  "  \$12000 ",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  " per 12 months",
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        25,
                                      ),
                                    ),
                                    color: Color.fromRGBO(0, 0, 0, 0.07),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 3,
                                    ),
                                    child: Text(
                                      'BEST DEAL',
                                      style: GoogleFonts.urbanist(
                                          color: Colors.red,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Divider(
                              color: becometrader,
                              thickness: 1,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check,
                                size: 28,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Id varius eget enim, nisi, dui ac",
                                style: GoogleFonts.urbanist(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check,
                                size: 28,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Id varius eget enim, nisi, dui ac",
                                style: GoogleFonts.urbanist(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check,
                                size: 28,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Id varius eget enim, nisi, dui ac",
                                style: GoogleFonts.urbanist(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: purple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              // fixedSize: const Size(100, 50),
                            ),
                            onPressed: () {},
                            child: SizedBox(
                              child: Text(
                                "Buy now",
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
