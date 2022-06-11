import 'package:flutter/material.dart';
import 'package:tudoom/constants/constants.dart';

class RegistrationStep1 extends StatelessWidget {
  const RegistrationStep1({Key? key}) : super(key: key);

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
          body: Column(
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
              Column(
                children: [
                  Container(
                    height: 300,
                    color: Colors.amber,
                    child: SizedBox(
                      height: 50,
                      child: AppBar(
                        bottom: TabBar(
                          tabs: [
                            Tab(
                              icon: Icon(Icons.directions_bike),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.directions_car,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
