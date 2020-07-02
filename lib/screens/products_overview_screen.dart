import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
