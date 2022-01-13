import 'package:flutter/material.dart';

import 'shopping_cart.dart';
import 'products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'Shopping Cart Demo';
  @override
  Widget build(BuildContext context) {
    return ShoppingCart(
      info: ShoppingCartInfo(productIds: <int>[1, 2]),
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductFeed(),
      ),
    );
  }
}
