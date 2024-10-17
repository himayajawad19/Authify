import 'package:flutter/material.dart';

class FadeTransitionRoute extends PageRouteBuilder {
  final Widget _child;

  FadeTransitionRoute(this._child)
      : super(
          transitionDuration: const Duration(
            milliseconds: 500,
          ),
          transitionsBuilder: (context, Animation<double> animation,
              Animation<double> secondAnimation, Widget child) {
            return FadeTransition(opacity: animation, child: child);
          },
          pageBuilder: (context, animation, secondaryAnimation) {
            return _child;
          },
        );
}
