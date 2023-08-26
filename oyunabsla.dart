import 'package:flutter/material.dart';
import 'sorusayfasi.dart';

class OyunaBasla extends StatefulWidget {
  OyunaBasla({super.key});

  @override
  State<OyunaBasla> createState() => _OyunaBaslaState();
}

class _OyunaBaslaState extends State<OyunaBasla> {
  int? indexSayisi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'BİLGİ OYUNU',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SoruSayfasi()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'OYUNA BAŞLA',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 40),
              ),
            )),
      ),
    );
  }
}
