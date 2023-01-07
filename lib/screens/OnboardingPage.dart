import 'package:flutter/material.dart';
import 'package:satish_s_application1/screens/onboard1.dart';
import 'package:satish_s_application1/screens/onboard2.dart';
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
              toplineAlignment: TextAlign.left,
            ),
            Onboard1(
              topImagePath: "assets/images/onboard2top.svg",
              midImagePath: "assets/images/onboard2mid.png",
              title: "Geo-tagging!",
              desc:
                  "Attendance can be marked on the basis of a desired location.",
              topline: "Go beyond borders with geo-tagging and geo-fencing",
              toplineColor: Colors.grey[300],
              toplineAlignment: TextAlign.left,
            ),
            Onboard1(
              topImagePath: "assets/images/onboard3top.svg",
              midImagePath: "assets/images/onboard3mid.png",
              title: "Get your attendance!",
              desc:
                  "We keep track of your Attendance. Check your Analytics here.",
              topline: "Maximize your impact with attendance analytics.",
              toplineColor: Colors.grey[300],
              toplineAlignment: TextAlign.left,
            ),
            Onboard2(
              topImagePath: "assets/images/onboard4top.svg",
              midImagePath: "assets/images/onboard4mid.png",
              topline:
                  "We are dedicated to protecting your privacy and upholding your trust.",
              terms:
                  "By clicking it️, You are agreeing to terms and conditions for this app",
              toplineColor: Colors.grey[300],
              toplineAlignment: TextAlign.left,
            )
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
                child: const Text("SKIP")),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: WormEffect(
                    spacing: 16,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.teal.shade700),
                onDotClicked: ((index) => _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn)),
              ),
            ),
            TextButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                child: const Text("NEXT")),
          ],
        ),
      ),
    );
  }
}
