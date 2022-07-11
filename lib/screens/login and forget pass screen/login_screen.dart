import 'package:flutter/material.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tudoom/screens/login%20and%20forget%20pass%20screen/forget_password.dart';
import 'package:tudoom/screens/profile/common_profile.dart';
import '../../registration screens/step_1.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: white,
          // resizeToAvoidBottomInset: false,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                          Image.asset(
                            'assets/images/tudoom_logo.png',
                            width: 150,
                            // fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          // login heading
                          Text(
                            "Login or Register",
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: loginHeaderText,
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          //  logo sub heading
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.poppins(
                                fontSize: 14.0,
                                color: loginHeaderText,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Enter Your ',
                                ),
                                TextSpan(
                                  text: 'username ,Email or Phone\n',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: 'and ',
                                ),
                                TextSpan(
                                  text: 'Password',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
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
                              hintText: "email,phone or username",
                              hintStyle: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                color: hintcolor,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: borderColor,
                                  width: 1.5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: borderColor,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: borderColor,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          // password field
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
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "password",
                              hintStyle: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                color: hintcolor,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: borderColor,
                                  width: 1.5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: borderColor,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: borderColor,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                          // remember and forgot pass
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 24.0,
                                  width: 24.0,
                                  child: Transform.scale(
                                    scale: 0.8,
                                    child: Checkbox(
                                        checkColor: white,
                                        fillColor: MaterialStateProperty.all(
                                            greyColor),
                                        value: isChecked,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5.0),
                                          ),
                                        ),
                                        onChanged: (value) {
                                          setState(() => isChecked = value);
                                        }),
                                  )),
                              SizedBox(width: 10.0),
                              Transform.translate(
                                offset: Offset(
                                  -10,
                                  0,
                                ),
                                child: Text(
                                  'remember me',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    color: loginHeaderText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  child: Text(
                                    'forgot Password?',
                                    style: GoogleFonts.lato(
                                      fontSize: 13,
                                      color: purple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgetPasswordScreen()),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          // login button
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
                                'login',
                                style: GoogleFonts.lato(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: white,
                                ),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CommonProfilescreen(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          // register account
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("don't have and account ",
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                  )),
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationStep1()),
                                ),
                                child: Text(
                                  'Register?',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: purple,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
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
