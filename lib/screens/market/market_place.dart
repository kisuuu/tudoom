import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/screens/market/avatars.dart';

import '../../constants/constants.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const BackButton(
            color: white,
          ),
          centerTitle: true,
          backgroundColor: purple,
          title: Text(
            'Marketplace',
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
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: becometrader,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.warning,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            'Credits should automatically deducted from your account  after you click download',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      // height: 45,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: becometrader,
                            // width: 2,
                          ),
                        ),
                      ),
                      child: TabBar(
                        labelColor: purple,
                        indicatorWeight: 2,
                        unselectedLabelColor:
                            const Color.fromRGBO(79, 91, 91, 0.3),
                        indicatorColor: purple,
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          // color: purple,
                          fontWeight: FontWeight.w600,
                        ),
                        tabs: const [
                          Tab(
                            text: 'stickers',
                          ),
                          Tab(
                            text: 'Gifts',
                          ),
                          Tab(
                            text: 'Emotes',
                          ),
                          Tab(
                            text: 'Avatars',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Text('data'),
                      ),
                      Center(
                        child: Text('data'),
                      ),
                      Center(
                        child: Text('data'),
                      ),
                      AvatarsScreen(),
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
