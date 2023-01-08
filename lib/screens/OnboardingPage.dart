import 'package:flutter/material.dart';
import 'package:satish_s_application1/core/utils/color_constant.dart';
import 'package:satish_s_application1/screens/onboard1.dart';
import 'package:satish_s_application1/screens/onboard2.dart';
import 'package:satish_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: _pageController,
          children: [
            Onboard1(
              topImagePath: "assets/images/onboard1top.svg",
              midImagePath: "assets/images/onboard1mid.png",
              title: "Facial Recognition!",
              desc:
                  "With the help of AI Vision based Attendance system, you can now mark you attendance by capturing your face.",
              topline:
                  "Experience the convenience of face recognition technology",
              toplineColor: Colors.grey[300],
              toplineAlignment: CrossAxisAlignment.start,
              toplineTextAlignment: TextAlign.start,
            ),
            Onboard1(
              topImagePath: "assets/images/onboard2top.svg",
              midImagePath: "assets/images/onboard2mid.png",
              title: "Geo-tagging!",
              desc:
                  "Attendance can be marked on the basis of a desired location.",
              topline: "Go beyond borders with geo-tagging and geo-fencing",
              toplineColor: ColorConstant.indigo800,
              toplineAlignment: CrossAxisAlignment.start,
              toplineTextAlignment: TextAlign.start,
            ),
            Onboard1(
              topImagePath: "assets/images/onboard3top.svg",
              midImagePath: "assets/images/onboard3mid.png",
              title: "Get your attendance!",
              desc:
                  "We keep track of your Attendance. Check your Analytics here.",
              topline: "Maximize your impact with attendance analytics.",
              toplineColor: Colors.grey[300],
              toplineAlignment: CrossAxisAlignment.end,
              toplineTextAlignment: TextAlign.end,
              right: 15,
              left: null,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  _pageController.jumpToPage(2);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black87,
                      decorationThickness: 2.0,
                      shadows: [
                        Shadow(color: Colors.black87, offset: Offset(0, -2))
                      ]),
                )),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                    spacing: 16,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.black),
                onDotClicked: ((index) => _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn)),
              ),
            ),
            TextButton(
                onPressed: () {
                  print(_pageController.page);
                  if (_pageController.page == 2.0) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                  body: Onboard2(
                                topImagePath: "assets/images/onboard4top.svg",
                                midImagePath: "assets/images/onboard4mid.png",
                                topline:
                                    "We are dedicated to protecting your privacy and upholding your trust.",
                                terms:
                                    "By clicking it️, You are agreeing to terms and conditions for this app",
                                toplineColor: Colors.grey[300],
                                toplineAlignment: CrossAxisAlignment.start,
                                toplineTextAlignment: TextAlign.left,
                              ))),
                    );
                  } else {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  }
                },
                child: CustomButton(
                  width: 84,
                  text: "Next",
                )),
          ],
        ),
      ),
    );
  }
}
