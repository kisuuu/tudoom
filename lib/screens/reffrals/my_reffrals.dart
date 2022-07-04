import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';

class MyReffralsScreen extends StatelessWidget {
  const MyReffralsScreen({Key? key}) : super(key: key);

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
            SizedBox(
              height: 15,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(194, 222, 209, 0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Eugenia Fox',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Refferal Status : ',
                              style: GoogleFonts.workSans(
                                color: borderColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Unseccusfull',
                              style: GoogleFonts.workSans(
                                color: borderColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 15,
                            ),
                            Text(
                              '  Account created',
                              style: GoogleFonts.workSans(
                                color: greyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          // height: 40,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: loginButton,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Claim',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 191, 191, 0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Eugenia Fox',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Refferal Status : ',
                              style: GoogleFonts.workSans(
                                color: borderColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Seccussfull',
                              style: GoogleFonts.workSans(
                                color: Color.fromRGBO(51, 221, 119, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 15,
                              color: Color.fromRGBO(51, 221, 119, 1),
                            ),
                            Text(
                              '  Account created',
                              style: GoogleFonts.workSans(
                                color: greyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          // height: 40,
                          width: MediaQuery.of(context).size.width * 0.6,
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
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(151, 196, 184, 0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Eugenia Fox',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Refferal Status : ',
                              style: GoogleFonts.workSans(
                                color: borderColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Unseccusfull',
                              style: GoogleFonts.workSans(
                                color: borderColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 15,
                            ),
                            Text(
                              '  Account created',
                              style: GoogleFonts.workSans(
                                color: greyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.symmetric(
                        //         horizontal: 25,
                        //       ),
                        //       child: Row(
                        //         children: [
                        //           Expanded(
                        //             child: ElevatedButton(
                        //               style: ElevatedButton.styleFrom(
                        //                 primary: purple,
                        //                 shape: RoundedRectangleBorder(
                        //                   borderRadius: BorderRadius.circular(
                        //                     10,
                        //                   ),
                        //                 ),
                        //                 // fixedSize: const Size(100, 50),
                        //               ),
                        //               onPressed: () {},
                        //               child: SizedBox(
                        //                 child: Text(
                        //                   "Claim",
                        //                   style: GoogleFonts.workSans(
                        //                     fontSize: 17,
                        //                     fontWeight: FontWeight.w600,
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),

                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          // height: 40,
                          width: MediaQuery.of(context).size.width * 0.6,
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
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
