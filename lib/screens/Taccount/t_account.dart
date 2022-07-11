import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/add%20credit/add_credit.dart';
import 'package:tudoom/screens/trader%20panel/trader_panel.dart';
import 'package:tudoom/screens/tudoom%20world/tudoom_world.dart';

class TAccountScreen extends StatelessWidget {
  const TAccountScreen({Key? key}) : super(key: key);

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
          'Tudoom Account',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 22,
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
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1,
                    ),
                    // borderRadius: BorderRadius.all(
                    //   Radius.circular(
                    //     15,
                    //   ),
                    // ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(67, 59, 83, 0.3),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        top: -30,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade800,
                          backgroundImage: const AssetImage(
                            'assets/images/profile_image.jpg',
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          height: 190,
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topCenter,
                            children: [
                              Stack(
                                children: [
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
                                    left: 120,
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
                                    right: 140,
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
                                    bottom: 40,
                                    left: 130,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: circlecolor,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 6,
                                    right: 130,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: circlecolor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                // height: 220,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 40, 10, 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Andre Sergios',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Your available balance',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.workSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: availableBalance,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '\$15,000',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      // SizedBox(
                                      const Spacer(),
                                      //   height: 20,
                                      // ),
                                      LinearPercentIndicator(
                                        leading: Text(
                                          'Lvl 21',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                        trailing: Text(
                                          'Lvl 22',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                        lineHeight: 15,
                                        linearGradient: const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(255, 227, 2, 1),
                                            Color.fromRGBO(255, 155, 48, 1),
                                          ],
                                        ),
                                        backgroundColor: const Color.fromRGBO(
                                            217, 217, 217, 1),
                                        barRadius: const Radius.circular(10),
                                        percent: .5,
                                        animation: true,
                                        animationDuration: 1000,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      )
                                    ],
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
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TudoomWorldServices(
                      icon: Icons.credit_card_rounded,
                      text: 'Transer credit',
                      page: () {},
                    ),
                    TudoomWorldServices(
                      icon: Icons.account_balance_rounded,
                      text: 'Trader panel',
                      page: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TraderPanel()),
                        );
                      },
                    ),
                    TudoomWorldServices(
                      icon: Icons.history,
                      text: 'Transaction history',
                      page: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ()),
                        // );
                      },
                    ),
                    TudoomWorldServices(
                      icon: Icons.add_card_rounded,
                      text: 'Add Credit',
                      page: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCreditScreen()),
                        );
                      },
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
