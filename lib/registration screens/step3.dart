import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/login%20and%20forget%20pass%20screen/login_screen.dart';

class RegistrationStep3 extends StatefulWidget {
  const RegistrationStep3({Key? key}) : super(key: key);

  @override
  State<RegistrationStep3> createState() => _RegistrationStep3State();
}

class _RegistrationStep3State extends State<RegistrationStep3> {
  bool hidePassword = true;
  final step3formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                'Steps 3/3',
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
                        "Create Account",
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
                          "Create your ",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: loginHeaderText,
                          ),
                        ),
                        Text(
                          "username ",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: loginHeaderText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "and ",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: loginHeaderText,
                          ),
                        ),
                        Text(
                          "password",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: loginHeaderText,
                            fontWeight: FontWeight.w600,
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
                                  return "username can't be empty";
                                }
                                return null;
                              },
                              controller: usernameController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 18,
                                ),
                                hintText: "enter your username",
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
                                  return "password can't be empty";
                                }
                                return null;
                              },
                              controller: passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: hidePassword,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 18,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    // hidePassword = !hidePassword;
                                    setState(() {
                                      hidePassword = !hidePassword;
                                    });
                                  },
                                  color: Colors.black,
                                  icon: Icon(
                                    hidePassword
                                        ? Icons.visibility_off_rounded
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: "enter password",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By continuing you can agree to our ",
                          style: GoogleFonts.lato(
                            fontSize: 13,
                            color: borderColor,
                            // letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "terms and conditions ",
                          style: GoogleFonts.lato(
                            fontSize: 13,
                            color: purple,
                            fontWeight: FontWeight.bold,
                            // letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "and ",
                          style: GoogleFonts.lato(
                            fontSize: 13,
                            color: borderColor,
                            // letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Privecy Policy",
                          style: GoogleFonts.lato(
                            fontSize: 13, color: purple,
                            fontWeight: FontWeight.bold,
                            // letterSpacing: 1,
                          ),
                        ),
                      ],
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
                                    usernameController.text;
                                    passwordController.text;
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
        ),
      ),
    );
  }
}
