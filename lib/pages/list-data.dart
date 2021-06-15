import 'package:flutter/material.dart';
import 'package:myapp/models/product.dart';
import 'package:myapp/services/product-service.dart';

class ListData extends StatelessWidget {
  final List<Product> _products = ProductService().getDummyDataProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: _products
                .map((e) => Row(
                      children: [
                        Expanded(
                          child: Text(
                            e.name,
                            style: TextStyle(
                                fontSize: 20, color: Colors.blue[900]),
                          ),
                          flex: 4,
                        ),
                        Expanded(
                          child: Text(e.price.toString(),
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),),
                          flex: 1,
                        )
                      ],
                    ))
                .toList(),
          ),
        ),
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('List Data')));
  }
}
