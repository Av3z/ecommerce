import 'package:ecommerce/src/components/drawer_components/drawer_menu.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        content: const Text('Deseja remover este item do carrinho?'),
        actions: [
          MaterialButton(
            child: const Text('Cancelar'),
            onPressed: () => Navigator.pop(context),
          ),

          MaterialButton(
            child: const Text('Sim'),
            onPressed: () {
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(product);
            },
          ),

        ],
      ),
      );
  }
  
  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const DrawerMenu(),
      appBar: 
        AppBar(
          centerTitle: true,
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          ),
      body: Column(children: [
        Expanded(child: cart.isEmpty ? const Center(
          child: Text("Seu carrinho está vazio", style: TextStyle(fontWeight: FontWeight.bold),
            )
          ) :
          ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              final item = cart[index];
              return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                  ),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(item.imagePath)
                  ),
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => removeItemFromCart(context, item),
                ),
                            ),
              );
          },),
          
        ),
          
      const SizedBox(height: 15,),
     
      ],)
    );
  }
}