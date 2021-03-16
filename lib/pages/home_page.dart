import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week5/models/item.dart';
import 'package:week5/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: "Gula", merk: "Gulaku", price: 5000),
    Item(name: "Micin", merk: "Ajinomoto", price: 3000),
    Item(name: "Garam", merk: "Cap Kapal", price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Daftar Barang"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/item');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ItemPage(
                        tempItem: item,
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
