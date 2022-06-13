import 'package:flutter/material.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/registration%20screens/step2.dart';
import 'package:tudoom/screens/login_screen.dart';
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
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: BackButton(color: black),
            centerTitle: true,
            backgroundColor: white,
            title: Text(
              'Steps 1/3',
              style: TextStyle(
                color: black,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "Verify it's you",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: loginHeaderText,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "the number you mentioned recieves",
                  style: TextStyle(
                    fontSize: 15,
                    color: loginHeaderText,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "a ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                      ),
                    ),
                    Text(
                      "verification code",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
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
                                    style: TextStyle(
                                        fontSize: 16,
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
                                    style: TextStyle(
                                        fontSize: 16,
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
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 18,
                                      ),
                                      hintText: 'enter your email',
                                      hintStyle: TextStyle(
                                        color: lightgrey,
                                        fontSize: 20,
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
                                          color: black,
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
                                      hintText: 'enter otp',
                                      hintStyle: TextStyle(
                                        color: lightgrey,
                                        fontSize: 20,
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
                                          color: black,
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
                                      hintStyle: TextStyle(
                                        color: lightgrey,
                                        fontSize: 20,
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
                                          color: black,
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
                                      hintText: 'enter otp',
                                      hintStyle: TextStyle(
                                        color: lightgrey,
                                        fontSize: 20,
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
                                          color: black,
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
                            child: const Text(
                              'continue',
                              style: TextStyle(
                                fontSize: 23,
                                // fontWeight: FontWeight.bold,
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
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              ),
                              child: Text(
                                'Login?',
                                style: const TextStyle(
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
    );
  }
}

// Container buildEmailSection() {
//   return Container(
//     margin: EdgeInsets.only(top: 20),
//     child: Column(
//       children: [
//         TextFormField(
//             cursorColor: black,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return "username can't be empty";
//               }
//               return null;
//             },
//             controller: controller,
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               hintText: hintText,
//               hintStyle: TextStyle(
//                 color: lightgrey,
//               ),
//               // hintText: "email,phone or username",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: black,
//                   width: 1,
//                 ),
//               ),
//             )),
//         SizedBox(
//           height: 20,
//         ),
//         TextFormField(
//             cursorColor: black,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return "username can't be empty";
//               }
//               return null;
//             },
//             controller: controller,
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               hintText: hintText,
//               hintStyle: TextStyle(
//                 color: lightgrey,
//               ),
//               // hintText: "email,phone or username",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: black,
//                   width: 1,
//                 ),
//               ),
//             )),
//       ],
//     ),
//   );
// }

// Container buildPhoneSection() {
//   return Container(
//     margin: EdgeInsets.only(top: 20),
//     child: Column(
//       children: [
//         TextFormField(
//             cursorColor: black,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return "username can't be empty";
//               }
//               return null;
//             },
//             controller: phoneNumberController,
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               hintText: hintText,
//               hintStyle: TextStyle(
//                 color: lightgrey,
//               ),
//               // hintText: "email,phone or username",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: black,
//                   width: 1,
//                 ),
//               ),
//             )),
//         SizedBox(
//           height: 20,
//         ),
//         TextFormField(
//             cursorColor: black,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return "username can't be empty";
//               }
//               return null;
//             },
//             controller: controller,
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               hintText: hintText,
//               hintStyle: TextStyle(
//                 color: lightgrey,
//               ),
//               // hintText: "email,phone or username",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     15,
//                   ),
//                 ),
//                 borderSide: BorderSide(
//                   color: black,
//                   width: 1,
//                 ),
//               ),
//             )),
//       ],
//     ),
//   );
// }

// Widget buildTextField(
//   TextEditingController controller,
//   String hintText,
//   bool isEmail,
// ) {
//   return TextFormField(
//       cursorColor: black,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "username can't be empty";
//         }
//         return null;
//       },
//       controller: controller,
//       keyboardType: TextInputType.text,
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: lightgrey,
//         ),
//         // hintText: "email,phone or username",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               15,
//             ),
//           ),
//           borderSide: BorderSide(
//             color: borderColor,
//             width: 1,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               15,
//             ),
//           ),
//           borderSide: BorderSide(
//             color: borderColor,
//             width: 1,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               15,
//             ),
//           ),
//           borderSide: BorderSide(
//             color: black,
//             width: 1,
//           ),
//         ),
//       ));
// }
