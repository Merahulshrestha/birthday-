import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HappyBirthday extends StatefulWidget {
  const HappyBirthday({Key? key}) : super(key: key);

  @override
  State<HappyBirthday> createState() => _HappyBirthdayState();
}

class _HappyBirthdayState extends State<HappyBirthday> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: const Color(0xFFFF0063),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFFF0063).withOpacity(0.3),
                  offset: const Offset(-10.0, 0.0),
                  blurRadius: 20.0,
                  spreadRadius: 4.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 115,
                  left: 20,
                  child: Text(
                    'Happy Birthday',
                    style: GoogleFonts.calligraffitti(
                      fontSize: 20,
                      color: const Color(0xFFEB1D36),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 20,
                  child: Material(
                    child: Container(
                      height: 80.0,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFF0063).withOpacity(0.3),
                            offset: const Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 30,
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Color(0xFFFF0063).withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/2nd.jpg'),
                          //now start from 12.00 mins
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 200,
                  child: Container(
                    height: 200,
                    width: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lastly I want to say, You occupy all my heart and I LOVE you so much',
                          style: GoogleFonts.calligraffitti(
                            fontSize: 20,
                            color: Color(0xFFEB1D36),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Siruu Piruu',
                          style: GoogleFonts.calligraffitti(
                            fontSize: 20,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(color: Colors.black),
                        Text(
                          "Happiest Birthday to my HEART",
                          style: GoogleFonts.calligraffitti(
                            fontSize: 25,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 16,
          ),
          
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Card(
              elevation: 50.0,
              child: Container(
                height: 120,
                width: double.infinity,
                child: Column(
                  children:  [
                    Card(
                      elevation: 50,
                      child: Text(
                        "Malai mero jeevan timi sangai bitaunu xa, timi mero lagi sabai thok hou, I know I have told you this so many times, \n I will marry you one day for sure and sorry I could not tell you everything in this app and also its not perfect but I have given my best. I love you. \n Yet again, Happy Birthday to you kali budiii. I hope you liked this surprise. \n I love you with all my heart, and more than you think",
                        style: GoogleFonts.calligraffitti(
                          fontSize: 16,
                          color: Color(0xFFDA1212),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
