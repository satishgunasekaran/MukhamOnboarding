import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:satish_s_application1/main.dart';
import 'package:satish_s_application1/screens/login_screen.dart';
import 'package:satish_s_application1/transition_util.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Stack(
                      children: <Widget>[
                        // SVG background widget
                        SvgPicture.asset(
                          "assets/images/authtop.svg",
                          fit: BoxFit.cover,
                        ),
                        // Text widget, positioned at top-center
                        TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0, end: 1),
                          duration: Duration(milliseconds: 1000),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/mukham_logo.png",
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                          builder: (BuildContext context, double _val,
                              Widget? child) {
                            return Positioned(
                              top: 100,
                              left: null,
                              right: 15 + (_val * 10),
                              width: 300,
                              child: Container(
                                child: Opacity(
                                  opacity: _val,
                                  child: Container(
                                    margin: EdgeInsets.only(left: _val * 20),
                                    // padding: EdgeInsets.only(top: _val * 20),
                                    child: child,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Experience Mukham",
                          textAlign: TextAlign.start,
                          style:
                              TextStyle(color: Color(0xFF2E3192), fontSize: 24),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            TextField(
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                focusColor: Color(0xFF2E3192),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF2E3192)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF2E3192)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF2E3192)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color(0xFF2E3192),
                                ),
                                labelText: 'Username',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2E3192)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2E3192)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2E3192)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xFF2E3192),
                                  ),
                                  labelText: 'Password',
                                  suffix: GestureDetector(
                                    child: _obscureText
                                        ? Text("Show")
                                        : Text("Hide"),
                                    onTap: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                  ),
                                )),
                            SizedBox(height: 5.0),
                            TextButton(
                              child: Text(
                                'Forgot Password? ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF2E3192)),
                              ),
                              onPressed: () {
                                // handle the button press
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 120.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    backgroundColor: Color(0xFF2E3192)),
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 1.0,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "OR",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 1.0,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset('assets/images/mauth_bar.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account ?"),
                                GestureDetector(
                                  onTap: () {
                                    navigateToNextScreen(
                                        context, LoginScreen());
                                  },
                                  child: Text(
                                    "Log in?",
                                    style: TextStyle(color: Color(0XFF2E3192)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
