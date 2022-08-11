import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class onBoardingPage extends StatefulWidget {
  const onBoardingPage({Key? key}) : super(key: key);

  @override
  State<onBoardingPage> createState() => onBoardingPageState();
}

class onBoardingPageState extends State<onBoardingPage> {
  double index = 0.0;

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);

    _onPageViewChange(int page) {
      setState(() {
        index = page.toDouble();
      });
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 55, right: 22, bottom: 10),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        color: Color(0xFF434E64),
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 700,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: _onPageViewChange,
                children: [
                  onBoarding1_1(),
                  onBoarding1_2(),
                  onBoarding2_1(),
                  onBoarding2_2(),
                ],
              ),
            ),
            DotsIndicator(
              dotsCount: 4,
              position: index,
              decorator: DotsDecorator(
                color: const Color(0xFFD9D9D9),
                size: const Size.square(8.0),
                activeSize: const Size(20.0, 8.0),
                activeColor: const Color(0xFF2F3DA9),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget onBoarding1_1() {
  return Column(
    children: [
      Image.asset(
        'image/OnBoardingStyle1-1.png',
      ),
      const SizedBox(height: 30),
      const Text(
        'Online-based\nLearning',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 27,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 20),
      const Text(
        'All lectures can be taken online\nwithout a professor or admin, and\ncoding can be done using DartPad\nwithout installing separate editors.',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 14,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w200),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget onBoarding1_2() {
  return Column(
    children: [
      const SizedBox(height: 30),
      Image.asset(
        'image/OnBoardingStyle1-2.png',
      ),
      const SizedBox(height: 20),
      const Text(
        'Fast Practice-\nbased Learning',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 27,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 18),
      const Text(
        'You can learn and apply concepts\nfast in micro units, so increasing the\npractical capability of app development.',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 14,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w200),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget onBoarding2_1() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 95.0),
        width: 270,
        height: 270,
        child: Image.asset(
          'image/OnBoardingStyle2-1.png',
        ),
      ),
      const SizedBox(height: 30),
      const Text(
        'Project-based\nLearning',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 27,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 20),
      const Text(
        'Through applying and utilizing the\nconcepts learned in Lesson to build\nvarious projects, you can develop your\nabilities to carry out projects.',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 14,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w200),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget onBoarding2_2() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 75.0),
        width: 235,
        height: 303.91,
        child: Image.asset(
          'image/OnBoardingStyle2-2.png',
        ),
      ),
      const SizedBox(height: 17),
      const Text(
        'Build your own App',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 27,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 53),
      const Text(
        'Using concepts learned in micro units\nfrom MicroLearnable, users can\nfinally create their own applications.',
        style: TextStyle(
            color: Color(0xFF434E64),
            fontSize: 14,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w200),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
