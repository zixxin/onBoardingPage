import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEDF8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
            Image.asset(
              'image/OnBoardingStyle1-1.png',
            ),
            const SizedBox(height: 20),
            const Text(
              'Online-based\nLearning',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'All lectures can be taken online\nwithout a professor or admin, and\ncoding can be done using DartPad\nwithout installing separate editors.',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
