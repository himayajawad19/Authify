import 'package:flutter/material.dart';

class SlideTransitionRoute extends PageRouteBuilder {
  final Widget _child;

  SlideTransitionRoute(this._child)
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, Animation<double> animation,
              Animation<double> secondaryAnimation, Widget child) {
            Animation<Offset> slideAnimation = Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation);

            return SlideTransition(
              position: slideAnimation,
              child: child,
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) {
            return _child;
          },
        );
}
