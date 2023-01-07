import 'package:satish_s_application1/presentation/onboard_four_screen/onboard_four_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:satish_s_application1/screens/OnboardingPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mukham Onboard',
      home: OnboardingPage(),
    );
  }
}
