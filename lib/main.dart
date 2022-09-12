import 'dart:async';
import 'package:flutter/material.dart';
import 'onboard.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart' ;

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => Onboard())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.pinkAccent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
              // child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        backgroundImage: AssetImage('images/shreya.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        'Happy Birthday Shreya <3',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontStyle:  FontStyle.italic,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                           
              Expanded(
                flex: 1,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                     Center(
                       child: LinearPercentIndicator(
                        width: 300,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 30,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        percent: 0.75,
                        progressColor: Colors.white,
                        backgroundColor: Colors.indigoAccent,
                                         ),
                     ),
                     
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                     const Text(
                      'Many Many Happy Returns of the day \n Love of my life',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2.0,
                          color: Colors.white,
                          fontSize: 18.0,
                          fontStyle:  FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
