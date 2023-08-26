import 'package:flutter/material.dart';

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  int indexSayisi = 0;
  int uzgun = 0;
  int mutlu = 0;
  List sorular = [
    'titanic dünyadaki en büyük gemidir',
    'dünyadaki  tavuk sayısı insan sayısından fazladır',
    'kelelebeklerin ömrü bir gündür',
    'dünya düzdür',
    'kaju fıstığı aslında bir meyvenin sapıdır',
    'istanbul 1453 yılında fethedilmiştir',
  ];
  List yanitlar = [false, true, false, false, true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  sorular[indexSayisi],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: ListTile(
              minLeadingWidth: 200,
              leading: const Icon(
                Icons.mood_bad,
                color: Colors.red,
                size: 50,
              ),
              title: Text(
                '$uzgun',
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 40),
              ),
            ),
          ),
          Divider(),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: ListTile(
              minLeadingWidth: 200,
              leading: const Icon(
                Icons.mood,
                color: Colors.green,
                size: 50,
              ),
              title: Text(
                '$mutlu',
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 40),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
                width: 150,
                height: 75,
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.pink,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Score:',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 40),
                        ),
                        Text(
                          '$mutlu',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                              shape: const CircleBorder(),
                              backgroundColor: Colors.red[400],
                            ),
                            child: const Icon(
                              Icons.thumb_down,
                              size: 30.0,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              bool yanlis = yanitlar[indexSayisi];
                              if (indexSayisi == yanitlar.length - 1) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        title: const Text(
                                            'TEBRİKLER... testi btirdiniz'),
                                        content: Text(
                                          'score: $mutlu',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 40),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  mutlu = 0;
                                                  uzgun = 0;
                                                  indexSayisi = 0;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('başa dön'))
                                        ],
                                      );
                                    });
                              } else {
                                setState(() {
                                  if (yanlis == false) {
                                    mutlu++;
                                  } else {
                                    uzgun++;
                                  }
                                  indexSayisi++;
                                });
                              }
                            },
                          ))),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                              shape: const CircleBorder(),
                              backgroundColor: Colors.green[400],
                            ),
                            child: const Icon(
                              Icons.thumb_up,
                              size: 30.0,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              bool dogru = yanitlar[indexSayisi];
                              if (indexSayisi == yanitlar.length - 1) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        title: const Text(
                                            'TEBRİKLER... testi btirdiniz'),
                                        content: Text(
                                          'score: $mutlu',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 40),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  mutlu = 0;
                                                  uzgun = 0;
                                                  indexSayisi = 0;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('başa dön'))
                                        ],
                                      );
                                    });
                              } else {
                                setState(() {
                                  if (dogru == true) {
                                    mutlu++;
                                  } else {
                                    uzgun++;
                                  }
                                  indexSayisi++;
                                  //   print('indexsayisi:$indexSayisi');
                                });
                              }
                            },
                          ))),
                ])),
          )
        ],
      ),
    );
  }
}
