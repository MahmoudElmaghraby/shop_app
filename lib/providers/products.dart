import 'package:flutter/material.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'red shirt',
      description: 'A red shirt - it is prity red !! ',
      price: 29.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    ),
    Product(
      id: 'p2',
      title: 'red shirt2',
      description: 'A red shirt - it is prity red !! ',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    ),
    Product(
      id: 'p3',
      title: 'red shirt3',
      description: 'A red shirt - it is prity red !! ',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    ),
    Product(
      id: 'p4',
      title: 'red shirt4',
      description: 'A red shirt - it is prity red !! ',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    ),
  ]; //Not final because it will change later , itself will change not the value

  List<Product> get items {
    return [..._items]; // Return a copy of items list
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    //_items.add(value);
    notifyListeners(); //Let all the widgets get the leatest updated list
  }
}
