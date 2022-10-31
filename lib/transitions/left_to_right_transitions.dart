import 'package:flutter/material.dart';

Route leftToRightTransition(Widget desenation) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => desenation,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}

Route scaleTransition(Widget desenation) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => desenation,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.ease;

      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );

      return ScaleTransition(
        scale: curvedAnimation,
        child: child,
      );
    },
  );
}
