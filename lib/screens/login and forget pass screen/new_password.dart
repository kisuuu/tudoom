import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/login%20and%20forget%20pass%20screen/login_screen.dart';

class EnterNewPasswordScreen extends StatefulWidget {
  EnterNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<EnterNewPasswordScreen> createState() => _EnterNewPasswordScreenState();
}

class _EnterNewPasswordScreenState extends State<EnterNewPasswordScreen> {
  bool hidePassword = true;
  final step3formKey = GlobalKey<FormState>();
  TextEditingController forgetEmailAndPhoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(color: black),
          centerTitle: true,
          backgroundColor: white,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/shape.png"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          )),
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
                Center(
                  child: Text(
                    "Forgot Password",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: loginHeaderText,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter your new password and conferm it",
                      // textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: loginHeaderText,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Form(
                  key: step3formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: black,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter password";
                            } else if (value.length <= 5) {
                              return "Password should be more then 5 letters";
                            }
                            return null;
                          },
                          controller: forgetEmailAndPhoneController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 18,
                            ),
                            hintText: "Enter your new password",
                            hintStyle: GoogleFonts.poppins(
                              color: hintcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
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
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          cursorColor: black,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "conferm password can't be empty";
                            } else if (value !=
                                forgetEmailAndPhoneController.text) {
                              return "Password didn't match";
                            }
                            return null;
                          },
                          controller: otpController,
                          keyboardType: TextInputType.number,
                          obscureText: hidePassword,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 18,
                            ),
                            hintText: "Conferm Password",
                            hintStyle: GoogleFonts.poppins(
                              color: hintcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Center(
                    child: Column(
                      children: [
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
                              if (step3formKey.currentState!.validate()) {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                  (Route<dynamic> route) => false,
                                );
                              }
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
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
