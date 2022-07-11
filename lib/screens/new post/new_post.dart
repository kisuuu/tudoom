import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({Key? key}) : super(key: key);

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  final newpostkey = GlobalKey<FormState>();
  bool status = false;
  TextEditingController destination = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: black,
              offset: Offset(0, 0.5),
            )
          ]),
          child: AppBar(
            elevation: 0,
            leading: const BackButton(
              color: black,
            ),
            backgroundColor: white,
            title: Text(
              'New Post',
              style: GoogleFonts.poppins(
                color: black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/new_post.png",
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Form(
                key: newpostkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewPostLabel(
                      text: 'Destination',
                    ),
                    NewPostTextField(
                      controller: destination,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    NewPostLabel(
                      text: 'Tag people',
                    ),
                    NewPostTextField(
                      controller: destination,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    NewPostLabel(
                      text: 'Add location',
                    ),
                    NewPostTextField(
                      controller: destination,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    NewPostLabel(
                      text: 'Add Music',
                    ),
                    NewPostTextField(
                      controller: destination,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Public",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 0.7),
                            ),
                          ),
                        ),
                        FlutterSwitch(
                          width: 45.0,
                          height: 20.0,
                          // valueFontSize: 12.0,
                          toggleSize: 12.0,
                          toggleColor: black,
                          activeToggleColor: white,
                          activeColor: Colors.grey,
                          value: status,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Advance setting',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(0, 0, 0, 0.7),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: black,
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            purple,
                          ),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          'Post',
                          style: GoogleFonts.lato(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: white,
                          ),
                        ),
                        onPressed: () {
                          if (newpostkey.currentState!.validate()) {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         CommonProfilescreen(),
                            //   ),
                            // );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewPostTextField extends StatelessWidget {
  NewPostTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
      ),
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "password can't be empty";
        }
        return null;
      },
      keyboardType: TextInputType.text,
    );
  }
}

class NewPostLabel extends StatelessWidget {
  String text;
  NewPostLabel({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      // 'Destination',
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.lato(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: const Color.fromRGBO(0, 0, 0, 0.7),
      ),
    );
  }
}
