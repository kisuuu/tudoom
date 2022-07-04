import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class AddCreditScreen extends StatefulWidget {
  AddCreditScreen({Key? key}) : super(key: key);

  @override
  State<AddCreditScreen> createState() => _AddCreditScreenState();
}

class _AddCreditScreenState extends State<AddCreditScreen> {
  List<Credit> credits = [
    Credit(
      totalAmount: '\$1000',
      totalCredit: '7000',
    ),
    Credit(
      totalAmount: '\$500',
      totalCredit: '6000',
    ),
    Credit(
      totalAmount: '\$2000',
      totalCredit: '20000',
    ),
    Credit(
      totalAmount: '\$4000',
      totalCredit: '40000',
    ),
    Credit(
      totalAmount: '\$100',
      totalCredit: '200',
    ),
  ];
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
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '7000 credit',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Avaliable Credit',
                        style: GoogleFonts.workSans(
                          color: Color.fromRGBO(87, 172, 47, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: credits.length,
                    itemBuilder: (context, index) {
                      final credit = credits[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                // width: 16.0,
                                color: becometrader,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 25,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Text(
                                      '${credit.totalCredit} credits',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Text(
                                      '${credit.totalAmount}',
                                      // textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: purple,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Icon(
                                      Icons.add_box_outlined,
                                      color: purple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Credit {
  final String totalCredit;
  final String totalAmount;

  Credit({
    required this.totalAmount,
    required this.totalCredit,
  });
}
