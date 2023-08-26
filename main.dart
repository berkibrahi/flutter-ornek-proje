import 'package:flutter/material.dart';

import 'oyunabsla.dart';
import 'sorusayfasi.dart';
//import 'constant.dart';

void main() {
  runApp(BilgiTesti());
}

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OyunaBasla(),
    );
  }
}

Scaffold _home() {
  return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SoruSayfasi(),
      )));
}
