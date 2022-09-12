import 'package:flutter/material.dart';
import 'package:happy_birthday/content_mobi.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card.dart';

class Onboard extends StatefulWidget {
  Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 
      Color(0xFFEAF6F6),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    height: 350,
                    width: 500,
                    child: Column(
                      children: [
                        Container(
                          height: 280,
                          width: 150,
                          child: Card(
                            
                              elevation: 50,
                              shadowColor: Color(0xFFFF0063).withOpacity(0.3),
                              child: Expanded(
                                  child: Image.asset(
                                contents[i].image,
                                fit: BoxFit.fitHeight,
                              ))),
                        ),
                        
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                          contents[i].title,
                          style:  GoogleFonts.calligraffitti(
                            fontSize: 35,
                            color: const Color(0xFFDA1212).withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(
                            contents[i].discription,
                            textAlign: TextAlign.center,
                            style:   GoogleFonts.calligraffitti(
                              fontSize: 16,
                              color:  Color(0xFFDA1212),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child: TextButton(
              //4.30 mins
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const HappyBirthday()));
                }

                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },

              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color(0xFFFF0063),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                elevation: 20,
                shadowColor: Colors.pink,
              ),

              //style: const ButtonStyle(),

              //shape: ,
              //4.30 mins
              child: Text(
                  currentIndex == contents.length - 1 ? "Continue" : "Next"),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor),
    );
  }
}
