import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: SamplePage())));
}

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  void _openPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20.0),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              child: const Text("Linear Library"),
              onPressed: () => {_openPage(SampleLinearPage())},
            ),
          ],
        ),
      ),
    );
  }
}

class SampleLinearPage extends StatefulWidget {
  @override
  _SampleLinearPageState createState() => _SampleLinearPageState();
}

class _SampleLinearPageState extends State<SampleLinearPage> {
  String state = 'Animation start';
  bool isRunning = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear Percent Indicators"),
        actions: [
          IconButton(
              icon: const Icon(Icons.stop),
              onPressed: () {
                setState(() {
                  isRunning = false;
                });
              })
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  lineHeight: 20.0,
                  animationDuration: 3000,
                  percent: 0.5,
                  animateFromLastPercent: true,
                  leading: const Text('data'),
                  trailing: const Text('data'),
                  linearGradient: const LinearGradient(
                    colors: <Color>[Color(0xffB07BE6), Color(0xff5BA2E0)],
                  ),
                  linearGradientBackgroundColor: const LinearGradient(
                    colors: <Color>[Color(0xffe5d6fa), Color(0xffc8dff8)],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
