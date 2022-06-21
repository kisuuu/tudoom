import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/registration%20screens/step2.dart';
import 'package:tudoom/screens/login%20and%20forget%20pass%20screen/login_screen.dart';
import 'package:tudoom/testing/testing2.dart';

class RegistrationStep1 extends StatefulWidget {
  const RegistrationStep1({Key? key}) : super(key: key);

  @override
  State<RegistrationStep1> createState() => _RegistrationStep1State();
}

class _RegistrationStep1State extends State<RegistrationStep1> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneOtpController = TextEditingController();
  TextEditingController emailOtpController = TextEditingController();
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: white,
            appBar: AppBar(
              elevation: 0,
              leading: BackButton(color: black),
              centerTitle: true,
              backgroundColor: white,
              title: Text(
                'Steps 1/3',
                style: GoogleFonts.poppins(
                  color: stepsheading,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/shape.png",
                  ),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Image.asset(
                      'assets/images/tudoom_logo.png',
                      width: 150,
                      // fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      "Verify it's you",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: loginHeaderText,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "the number you mentioned recieves",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: loginHeaderText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "a ",
                          style: TextStyle(
                            fontSize: 13,
                            color: loginHeaderText,
                          ),
                        ),
                        Text(
                          "verification code",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: loginHeaderText,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSignupScreen = true;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        "Phone",
                                        style: GoogleFonts.lato(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: isSignupScreen
                                                ? purple
                                                : greyColor),
                                      ),
                                      if (isSignupScreen)
                                        Container(
                                          margin: EdgeInsets.only(top: 3),
                                          height: 2,
                                          width: 55,
                                          color: purple,
                                        )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSignupScreen = false;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        "Email",
                                        style: GoogleFonts.lato(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: !isSignupScreen
                                                ? purple
                                                : greyColor),
                                      ),
                                      if (!isSignupScreen)
                                        Container(
                                          margin: EdgeInsets.only(top: 3),
                                          height: 2,
                                          width: 55,
                                          color: purple,
                                        )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            // for email otp
                            if (!isSignupScreen)
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextFormField(
                                        cursorColor: black,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "email can't be empty";
                                          }
                                          return null;
                                        },
                                        controller: emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 18,
                                          ),
                                          hintText: 'enter your email',
                                          hintStyle: GoogleFonts.poppins(
                                            color: hintcolor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // hintText: "email,phone or username",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                        cursorColor: black,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "otp can't be empty";
                                          }
                                          return null;
                                        },
                                        controller: emailOtpController,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 18,
                                          ),
                                          hintText: 'enter OTP',
                                          hintStyle: GoogleFonts.poppins(
                                            color: hintcolor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // hintText: "email,phone or username",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),

                            // phone number and otp
                            if (isSignupScreen)
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextFormField(
                                        cursorColor: black,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "phone number can't be empty";
                                          }
                                          return null;
                                        },
                                        controller: phoneNumberController,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 18,
                                          ),
                                          hintText: 'enter your phone',
                                          hintStyle: GoogleFonts.poppins(
                                            color: hintcolor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // hintText: "email,phone or username",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                        cursorColor: black,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "otp can't be empty";
                                          }
                                          return null;
                                        },
                                        controller: phoneOtpController,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 18,
                                          ),
                                          hintText: 'enter OTP',
                                          hintStyle: GoogleFonts.poppins(
                                            color: hintcolor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // hintText: "email,phone or username",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                15,
                                              ),
                                            ),
                                            borderSide: BorderSide(
                                              color: borderColor,
                                              width: 1,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),

                            // continue button
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    loginButton,
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
                                  'continue',
                                  style: GoogleFonts.lato(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: white,
                                  ),
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    phoneNumberController.text;
                                    emailOtpController.text;
                                    phoneOtpController.text;
                                    emailController.text;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegistrationStep2()),
                                    );
                                  } else {}
                                },
                              ),
                            ),

                            SizedBox(
                              height: 25,
                            ),
                            // already have and accout
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "already have and account ",
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    color: borderColor,
                                  ),
                                ),
                                InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                  ),
                                  child: Text(
                                    'Login?',
                                    style: GoogleFonts.lato(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: purple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
