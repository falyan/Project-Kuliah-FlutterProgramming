import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_order_talago_minang/halaman_utama.dart';
import 'package:food_order_talago_minang/makanan.dart';
import 'package:food_order_talago_minang/minuman.dart';

void main() {
  runApp(new MaterialApp(
    home: new FormulirPelanggan(),
    routes: <String, WidgetBuilder>{
      '/HalForm': (BuildContext context) => new FormulirPelanggan(),
      '/HalUtama': (BuildContext context) => new HalamanUtama(),
      '/HalMakanan': (BuildContext context) => new HalMakanan(),
      '/HalMinuman': (BuildContext context) => new HalMinuman(),
    },
  ));
}

class FormulirPelanggan extends StatefulWidget {
  @override
  _FormulirPelangganState createState() => _FormulirPelangganState();
}

class _FormulirPelangganState extends State<FormulirPelanggan> {
  List<String> cabang = [
    "Cab. Padjajaran",
    "Cab. Yasmin",
    "Cab. Surya Kencana"
  ];

  String _cabang = "Cab. Padjajaran";

  void pilihCabang(String value) {
    setState(() {
      _cabang = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: Text('Formulir Pelanggan')),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                    hintText: 'isi nama pemesan',
                    labelText: "Nama Pemesan",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    )),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 30.0),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    hintText: 'isi nomor meja',
                    labelText: "Nomor Meja",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    )),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 30.0),
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Pilih Cabang  :  ',
                    style: new TextStyle(fontSize: 17.0, color: Colors.black54),
                  ),
                  new DropdownButton(
                    onChanged: (String value) {
                      pilihCabang(value);
                    },
                    value: _cabang,
                    items: cabang.map((String value) {
                      return new DropdownMenuItem(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),
              new RaisedButton(
                textColor: Colors.white,
                child: new Text('SELANJUTNYA'),
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/HalUtama');
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
