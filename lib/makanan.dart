import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:food_order_talago_minang/halaman_utama.dart';
import 'package:food_order_talago_minang/makanan.dart';
import 'package:food_order_talago_minang/minuman.dart';

class HalMakanan extends StatelessWidget {
  TextEditingController controllerMakanan = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Pilih Makanan')),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan1.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan2.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan3.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Text('       RENDANG    '),
              Text('                  AYAM BUMBU    '),
              Text('             CINCANG')
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan4.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan5.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan6.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Text('            TELUR    '),
              Text('                    IKAN BAKAR    '),
              Text('            AYAM BAKAR')
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan7.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan8.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/makanan9.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Text('       AYAM BALADO IJO    '),
              Text('    DENDENG    '),
              Text('              AYAM BALADO')
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/tahu.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/tempe.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/kerupukkulit.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Text('           TAHU    '),
              Text('                           TEMPE    '),
              Text('                 KERUPUK KULIT')
            ],
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 20.0),
          ),
          new TextField(
            controller: controllerMakanan,
            maxLines: 10,
            decoration: new InputDecoration(
                hintText: 'Pesan Makanan',
                labelText: "Silahkan Pesan Makanan Anda",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                )),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HalMinuman');
            },
            splashColor: Colors.orangeAccent,
            color: Colors.red,
            textColor: Colors.white,
            child: Text('pesan MINUMAN'),
          ),
        ]));
  }
}
