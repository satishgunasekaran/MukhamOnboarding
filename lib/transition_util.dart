import 'package:flutter/material.dart';

// ...

void navigateToNextScreen(BuildContext context, var widget) {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // var begin = Offset(0.0, 1.0);
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        // var curve = Curves.ease;
        var curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    ),
  );
}
