import 'package:flutter/material.dart';

class EnterAnimation {
  late AnimationController controller;
  late Animation<double> circleSzie;

  EnterAnimation(this.controller) {
    circleSzie = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInBack));
  }
}
