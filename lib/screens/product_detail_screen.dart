import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
/*
  final String title;
  final double price;
  ProductDetailScreen(this.title, this.price);
*/

  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments
        as String; // Getting the product id from the ProductOverviewScreen

    final loadedProduct = Provider.of<Products>(
      context,
      listen:
          false, //To not update this widget when the products list changed (Don't listen to changes)
    ).findById(
        productId); // Find by id is method we made it in Products class to return the product with given ID
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
