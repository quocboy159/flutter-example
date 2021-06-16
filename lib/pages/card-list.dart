import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/product.dart';
import 'package:myapp/services/product-service.dart';
import 'package:myapp/utils/utility.dart';

class CardList extends StatelessWidget {
  final List<Product> _products = ProductService().getDummyDataProducts();
  final formatCurrency = NumberFormat.currency(locale: "en_US", symbol: "€");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: _products
                .map((e) => Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: CardItem(product: e),
                    ))
                .toList()),
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Cart List')));
  }
}

class CardItem extends StatelessWidget {
  final Product product;

  const CardItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent[50],
      shadowColor: Colors.yellow,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.production_quantity_limits),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(children: [
                Expanded(
                    child: Text(
                  product.name,
                  style: TextStyle(fontSize: 20),
                )),
                Expanded(
                    child: Text(
                  Utilities.formatCurrency(value: product.price),
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 18, color: Colors.grey[900]),
                ))
              ]),
            ),
            subtitle: Text(product.description),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.filled(product.star, 0).map((e) => Icon(Icons.star)).toList(),
              ),
              TextButton(onPressed: () {}, child: Text("BUY TICKETS"))
            ],
          )
        ],
      ),
    );
  }
}
