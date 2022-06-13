import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/registration%20screens/step3.dart';
import 'package:tudoom/screens/login_screen.dart';

class RegistrationStep2 extends StatefulWidget {
  const RegistrationStep2({Key? key}) : super(key: key);

  @override
  State<RegistrationStep2> createState() => _RegistrationStep2State();
}

class _RegistrationStep2State extends State<RegistrationStep2> {
  final step2formKey = GlobalKey<FormState>();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  bool isSignupScreen = true;
  @override
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

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
              'Steps 2/3',
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
                      "Enter your ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "Full name ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "and ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "DOB ",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "so that",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "can show you the appropriate",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "content",
                      style: TextStyle(
                        fontSize: 15,
                        color: loginHeaderText,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Form(
                  key: step2formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: black,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "name can't be empty";
                            }
                            return null;
                          },
                          controller: fullnameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "enter your full name",
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
                              return "please select DOB";
                            }
                            return null;
                          },
                          controller: dateController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "select your DOB",
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
                              suffixText: 'DD/MM/YYYY'),
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(pickedDate);
                              String formattedDate =
                                  DateFormat('dd/MM/yyyy').format(pickedDate);

                              setState(() {
                                dateController.text = formattedDate;
                              });
                            } else {}
                          },
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
                              if (step2formKey.currentState!.validate()) {
                                fullnameController.text;
                                dateController.text;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationStep3()),
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
