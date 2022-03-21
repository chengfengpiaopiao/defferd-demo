// box.dart

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A simple blue 30x30 box.
class DeferredBox extends StatelessWidget {
  DeferredBox() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      color: Colors.blue,
      child: Image(image: AssetImage("assets/putin.jpg")),
    );
  }
}
