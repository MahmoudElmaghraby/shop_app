import 'package:flutter/foundation.dart';
import 'package:shop_app/providers/cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _ordders = [];

  List<OrderItem> get orders {
    return [..._ordders];
  }

  void addOrder(List<CartItem> cartProducs, double total) {
    _ordders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: total,
        products: cartProducs,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
