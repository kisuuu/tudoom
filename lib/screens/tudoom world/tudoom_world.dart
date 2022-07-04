import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tudoom/screens/reffrals/reffrals_screen.dart';
import 'package:tudoom/screens/stars%20and%20badges/star_and_badges.dart';

import '../../constants/constants.dart';

class TudoomWorldScreen extends StatelessWidget {
  TudoomWorldScreen({Key? key}) : super(key: key);
  final controller = PageController();
  final List<String> imgList = [
    'https://placeimg.com/640/480/animals',
    'https://placeimg.com/640/480/arch',
    'https://placeimg.com/640/480/nature',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(color: white),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'Tudoom World',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search Anything",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.search,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Expanded(
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: <Widget>[
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: <Widget>[
                    //           iconCircle(
                    //               "Officials", Icons.assignment_turned_in_rounded),
                    //           iconCircle(
                    //               "Become trader", Icons.account_balance_rounded),
                    //           iconCircle("Leader board", Icons.leaderboard),
                    //           iconCircle("Taccount", Icons.supervisor_account),
                    //         ],
                    //       ),
                    //       SizedBox(
                    //         height: 20,
                    //       ),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: <Widget>[
                    //           iconCircle("Refferals", Icons.share),
                    //           iconCircle("Updates", Icons.upload),
                    //           iconCircle("Store", Icons.local_grocery_store),
                    //           iconCircle("Badges", Icons.star),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TudoomWorldServices(
                          icon: Icons.assignment_turned_in_rounded,
                          text: 'Officials',
                        ),
                        TudoomWorldServices(
                          icon: Icons.account_balance,
                          text: 'Become trader',
                        ),
                        TudoomWorldServices(
                          icon: Icons.leaderboard,
                          text: 'Leader board',
                        ),
                        TudoomWorldServices(
                          icon: Icons.supervisor_account,
                          text: 'Taccount',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => ReffralsScreen(),
                          child: TudoomWorldServices(
                            icon: Icons.share,
                            text: 'Reffeals',
                          ),
                        ),
                        TudoomWorldServices(
                          icon: Icons.upload,
                          text: 'Updates',
                        ),
                        TudoomWorldServices(
                          icon: Icons.local_grocery_store,
                          text: 'Store',
                        ),
                        InkWell(
                          onTap: () => StarAndBadgesScreen(),
                          child: TudoomWorldServices(
                            icon: Icons.star,
                            text: 'Badges',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Prome & Discount',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      size: 25,
                      color: purple,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 16),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: controller,
                      itemCount: imgList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: SizedBox(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                imgList[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: imgList.length,
                    effect: CustomizableEffect(
                      activeDotDecoration: DotDecoration(
                        width: 32,
                        height: 6,
                        color: Colors.indigo,
                        rotationAngle: 180,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      dotDecoration: DotDecoration(
                        width: 20,
                        height: 6,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      spacing: 6.0,
                      // activeColorOverride: (i) => colors[i],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  Column(
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 80,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color.fromRGBO(0, 0, 0, 0.1),
//                       ),
//                       child: Icon(
//                         Icons.assignment_turned_in_rounded,
//                         size: 25,
//                         color: Color.fromRGBO(0, 0, 0, 0.7),
//                       ),
//                     ),
//                     Container(
//                       height: 40,
//                       // width: 40,
//                       width: 80,
//                       child: Text(
//                         "Become trader",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.workSans(
//                           color: Colors.black87,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 80,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color.fromRGBO(0, 0, 0, 0.1),
//                       ),
//                       child: Icon(
//                         Icons.assignment_turned_in_rounded,
//                         size: 25,
//                         color: Color.fromRGBO(0, 0, 0, 0.7),
//                       ),
//                     ),
//                     Container(
//                       height: 40,
//                       // width: 40,
//                       width: 80,
//                       child: Text(
//                         "Taccount",
//                         style: GoogleFonts.workSans(
//                           color: Colors.black87,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 80,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color.fromRGBO(0, 0, 0, 0.1),
//                       ),
//                       child: Icon(
//                         Icons.assignment_turned_in_rounded,
//                         size: 25,
//                         color: Color.fromRGBO(0, 0, 0, 0.7),
//                       ),
//                     ),
//                     Container(
//                       height: 40,
//                       // width: 40,
//                       width: 80,
//                       child: Text(
//                         "Taccount",
//                         style: GoogleFonts.workSans(
//                           color: Colors.black87,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

class TudoomWorldServices extends StatelessWidget {
  IconData icon;
  String text;

  TudoomWorldServices({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          child: Icon(
            icon,
            // Icons.assignment_turned_in_rounded,
            size: 25,
            color: Color.fromRGBO(0, 0, 0, 0.7),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 40,
          // width: 40,
          width: 80,
          child: Text(
            text,
            textAlign: TextAlign.center,
            // "Taccount",
            style: GoogleFonts.workSans(
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
