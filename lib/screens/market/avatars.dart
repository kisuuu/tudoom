import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarsScreen extends StatelessWidget {
  const AvatarsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              'Angry',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                // mainAxisSpacing: 10,
                crossAxisSpacing: 15,
                // shrinkWrap: true,
                childAspectRatio: (0.55),
                shrinkWrap: true,

                crossAxisCount: 4,
                children: [
                  Badges(
                    image: 'assets/images/avatar1.png',
                    subtitle: 'chiobi',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar2.png',
                    subtitle: 'blude',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar3.png',
                    subtitle: 'Beatriz',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar4.png',
                    subtitle: 'Shira',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar5.png',
                    subtitle: "chiobi",
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar6.png',
                    subtitle: 'blude',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar7.png',
                    subtitle: 'Beatriz',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar8.png',
                    subtitle: 'Shira',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar9.png',
                    subtitle: 'chiobi',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar10.png',
                    subtitle: 'blude',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar11.png',
                    subtitle: 'Beatriz',
                    price: '\$0.1',
                  ),
                  Badges(
                    image: 'assets/images/avatar12.png',
                    subtitle: 'Shira',
                    price: '\$0.1',
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
  String subtitle;
  String price;
  Badges({
    Key? key,
    required this.image,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Color.fromARGB(255, 68, 27, 24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(243, 171, 167, 1),
            ),
            height: 70,
            width: 70,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            // style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16),
            style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          Text(
            price,
            style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
