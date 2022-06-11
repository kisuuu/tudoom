import 'package:flutter/material.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/registration%20screens/step_1.dart';

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
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: white,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          // logo heading
                          Text(
                            "Login or Register",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
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
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: loginHeaderText,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Enter Your ',
                                ),
                                TextSpan(
                                  text: 'username ,Email or Phone\n',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'and ',
                                ),
                                TextSpan(
                                  text: 'Password',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          // username field
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
                                child: const Text(
                                  'remember me',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: loginHeaderText,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              // const Text(
                              //   'Remember me',
                              //   style: TextStyle(
                              //     fontSize: 10,
                              //     color: loginHeaderText,
                              //   ),
                              // ),
                              Spacer(),
                              Container(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: purple,
                                    ),
                                  ),
                                  onPressed: () {},
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
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: white,
                                ),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  usernameController.text;
                                  passwordController.text;
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
                              Text(
                                "don't have and account ",
                              ),
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationStep1()),
                                ),
                                child: Text(
                                  'Register?',
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
