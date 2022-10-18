import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Halaman Utama')),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(top: 10.0),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 5.0),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('img/nasiPadang.jpeg'),
                  new Padding(
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                  Image.asset('img/minuman.jpg'),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/HalMakanan');
                    },
                    splashColor: Colors.orangeAccent,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text('Pilih MAKANAN'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[Text('RM Talago Minang')],
          ),
          color: Colors.redAccent),
    );
  }
}
