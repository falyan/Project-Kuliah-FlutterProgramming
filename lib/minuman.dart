import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_order_talago_minang/halaman_utama.dart';
import 'package:food_order_talago_minang/makanan.dart';
import 'package:food_order_talago_minang/minuman.dart';

class HalMinuman extends StatelessWidget {
  TextEditingController controllerMinuman = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Pilih Minuman')),
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
                image: AssetImage('img/minuman1.jpg'),
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
                image: AssetImage('img/minuman2.jpg'),
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
                image: AssetImage('img/minuman3.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Text('        ES TEH MANIS    '),
              Text('       ES LEMON TEA    '),
              Text('      ES KELAPA MUDA')
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/minuman4.jpg'),
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
                image: AssetImage('img/minuman5.jpg'),
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
                image: AssetImage('img/minuman6.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Text('        ES JERUK    '),
              Text('                 ES DOGER    '),
              Text('                   ES CENDOL')
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.black,
              width: 80,
              height: 80,
              margin: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('img/minuman7.jpg'),
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
                image: AssetImage('img/minuman8.jpg'),
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
                image: AssetImage('img/minuman9.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Text('        ES BOBA    '),
              Text('                    ES TELER    '),
              Text('                     ES BUAH')
            ],
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 20.0),
          ),
          new TextField(
            controller: controllerMinuman,
            maxLines: 10,
            decoration: new InputDecoration(
                hintText: 'Pesan Minuman',
                labelText: "Silahkan Pesan Minuman Anda",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                )),
          ),
          RaisedButton(
            onPressed: () {},
            splashColor: Colors.orangeAccent,
            color: Colors.red,
            textColor: Colors.white,
            child: Text('SELESAI'),
          ),
        ]));
  }
}
