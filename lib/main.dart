import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'konten.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApplication'),
          backgroundColor: Colors.orange,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: [
                Container(
                  child: CupertinoButton(
                    child: Text(
                      'BERITA TERBARU',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  child: CupertinoButton(
                    child: Text(
                      'PERTANDINGAN HARI INI',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Container(
            //       child: Image(
            //         image: NetworkImage(
            //             'https://ichef.bbci.co.uk/news/800/cpsprodpb/D412/production/_112709245_costa2.png'),
            //       ),
            //     ),
            //     Container(
            //       alignment: Alignment.center,
            //       height: 50,
            //       child: Text(
            //         'Costa Mendekat ke Palmeiras',
            //       ),
            //     ),
            //     Container(
            //       padding: EdgeInsets.only(left: 20),
            //       alignment: Alignment.centerLeft,
            //       color: Colors.blue[300],
            //       height: 50,
            //       child: Text(
            //         'Transfer',
            //       ),
            //     ),
            //   ],
            // ),
            Stack(
              children: <Widget>[
                Container(
                    color: Colors.purple[300],
                    alignment: Alignment.bottomLeft,
                    child: CupertinoButton(
                        child: Text('Transfer',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                        onPressed: () {}),
                    height: 300.0,
                    width: 400.0,
                    margin: EdgeInsets.all(8)),
                Container(
                  color: Colors.white,
                  alignment: Alignment.bottomCenter,
                  child: Text('Costa Mendekat ke Palmeiras',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                  height: 240.0,
                  width: 400.0,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Container(
                    child: Image(
                      image: NetworkImage(
                          'https://ichef.bbci.co.uk/news/800/cpsprodpb/D412/production/_112709245_costa2.png'),
                    ),
                    margin: EdgeInsets.all(10)),
              ],
            ),
            Konten1(),
            Konten2(),
          ],
        ),
      ),
    );
  }
}
