import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/login_screen.dart';

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
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: BackButton(color: black),
            centerTitle: true,
            backgroundColor: white,
            title: Text(
              'Steps 3/3',
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
                    "Create Account",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create your ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                      ),
                    ),
                    Text(
                      "username ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "and ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                      ),
                    ),
                    Text(
                      "password",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        fontWeight: FontWeight.bold,
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
                            hintText: "enter your username",
                            border: OutlineInputBorder(
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
                            enabledBorder: OutlineInputBorder(
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
                            border: OutlineInputBorder(
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
                            enabledBorder: OutlineInputBorder(
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
                      style: TextStyle(
                        fontSize: 12,
                        color: loginHeaderText,
                        // letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "terms and conditions ",
                      style: TextStyle(
                        fontSize: 12,
                        color: purple,
                        fontWeight: FontWeight.w500,
                        // letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "and ",
                      style: TextStyle(
                        fontSize: 12,
                        color: loginHeaderText,
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
                      style: TextStyle(
                        fontSize: 12, color: purple,
                        fontWeight: FontWeight.w500,
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
                            child: const Text(
                              'continue',
                              style: TextStyle(
                                fontSize: 23,
                                // fontWeight: FontWeight.bold,
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
    );
  }
}
