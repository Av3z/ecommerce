import 'package:ecommerce/src/components/drawer_components/drawer_menu.dart';
import 'package:ecommerce/src/components/shop_components/product_tile.dart';
import 'package:ecommerce/src/components/shop_components/search_component.dart';
import 'package:ecommerce/src/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {

    final products = context.watch<Shop>().shop;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Shop', style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body: ListView(
        children: [
          const SearchComponent(),
          const SizedBox(height: 15,),
          Center(child: 
            Text('Produtos mais populares do dia', 
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
                fontSize: 16,
                ),
              )
            ),
          const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Mais vendidos 🔥", style: TextStyle(color: Colors.black, 
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),),
              Text('Ver todos', style: TextStyle(color: Colors.blue),),
            ],
          ),
          SizedBox(
            height: 480,
            child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductTile(product: product);
              },
            ),
          ),
        ], 
      ),
    );
  }
}