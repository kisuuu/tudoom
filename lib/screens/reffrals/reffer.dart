import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';

class Reffer extends StatefulWidget {
  Reffer({Key? key}) : super(key: key);

  @override
  State<Reffer> createState() => _RefferState();
}

class _RefferState extends State<Reffer> {
  TextEditingController controller = TextEditingController(text: 'SWXT45R');

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

// https://postimg.cc/hXXnFg6x
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '2000\$',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Reward Earned',
              style: GoogleFonts.workSans(
                  color: Color.fromRGBO(51, 221, 119, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset(
                'assets/images/refferimage.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                'Invite your friend and earn 250\$ on each reffer',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: black,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                'Integer id quis vulputate mauris. Hendrerit sapien id at blandit sed. Dolor aenean diam, ultrices proin cras.',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: borderColor,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: purple),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: purple,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: controller,
                      readOnly: true,
                      textAlign: TextAlign.center,
                    )),
                    VerticalDivider(
                      color: purple,
                      thickness: 1.5,
                    ),
                    Expanded(
                        child: TextButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () async {
                        final data = ClipboardData(text: controller.text);
                        Clipboard.setData(ClipboardData(text: controller.text))
                            .then((_) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "${controller.text} copied to clipboard")));
                        });
                      },
                      child: Text(
                        'Copy Code',
                        style: GoogleFonts.workSans(
                          color: purple,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      // 'Copy  Code',
                      // textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        fixedSize: const Size(100, 50),
                      ),
                      onPressed: () {},
                      child: SizedBox(
                        child: Text(
                          "Invite friend",
                          style: GoogleFonts.workSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
