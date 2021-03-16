import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week5/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;
  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Detail Barang"),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(child: Text("Nama Barang")),
                          Expanded(child: Text("Merk Barang")),
                          Expanded(
                            child: Text(
                              "Harga Barang",
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(tempItem.name)),
                      Expanded(child: Text(tempItem.merk)),
                      Expanded(
                          child: Text(
                        tempItem.price.toString(),
                        textAlign: TextAlign.end,
                      ))
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
