import 'package:ecommerce/src/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: 'Camisa Grêmio 2023', 
      price: 109.90, 
      description: 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500', 
      imagePath: 'lib/images/gremio1.jpeg',
      ),

      // product 2
    Product(
      name: 'Camisa Grêmio 2020', 
      price: 109.90, 
      description: ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500', 
      imagePath: 'lib/images/gremio2.jpeg',
      ),

      // product 3
    Product(
      name: 'Camisa Grêmio Retro', 
      price: 109.90, 
      description: 'Camisa modelo 2023 / camisa celeste', 
      imagePath: 'lib/images/gremio4.jpeg',
      ),

  ];
  
  // user cart
  final List<Product> _cart = [];

  // get product list 
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
     _cart.remove(item);
     notifyListeners();
  }

}