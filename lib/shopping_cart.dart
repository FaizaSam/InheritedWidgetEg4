import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class ShoppingCartInfo {
  final List<int> productIds;

  ShoppingCartInfo({required this.productIds});
}

class ShoppingCart extends InheritedWidget {
  final Widget child;
  const ShoppingCart({Key? key, required this.info, required this.child})
      : super(child: child);

  final ShoppingCartInfo info;
  static ShoppingCartInfo of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ShoppingCart>()
            as ShoppingCart)
        .info;
  }

  @override
  bool updateShouldNotify(ShoppingCart old) =>
      !IterableEquality().equals(info.productIds, old.info.productIds);
}
