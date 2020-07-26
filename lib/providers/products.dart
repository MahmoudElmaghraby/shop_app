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
      isFavorite: true,
    ),
    Product(
      id: 'p4',
      title: 'red shirt4',
      description: 'A red shirt - it is prity red !! ',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      isFavorite: true,
    ),
  ]; //Not final because it will change later , itself will change not the value

  //var _showFavoritesOnly = false;

  List<Product> get items {
    /*  if (_showFavoritesOnly) {
      return _items.where((element) => element.isFavorite).toList();
    } */

    return [..._items]; // Return a copy of items list
  }

  List<Product> get favoriteItems {
    return _items.where((element) => element.isFavorite == true).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
/* 
  void showFavoritesOnly() {
    _showFavoritesOnly = true;
    notifyListeners(); //Let all the widgets get the leatest updated list
  }

  void showAll() {
    _showFavoritesOnly = false;
    notifyListeners(); //Let all the widgets get the leatest updated list
  } */

  void addProduct() {
    //_items.add(value);
    notifyListeners(); //Let all the widgets get the leatest updated list
  }
}
