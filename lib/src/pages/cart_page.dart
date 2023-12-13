import 'package:ecommerce/src/services/clipboard_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/src/components/drawer_components/drawer_menu.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/models/shop.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cart"),
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => ClipboardService().copy(context, cart),
        child: const Icon(Icons.copy, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? const Center(
                    child: Text(
                      "Seu carrinho está vazio",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];
                      return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(item.imagePath)),
                            title: Text(
                              item.name,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            subtitle:
                                Text("R\$${item.price.toStringAsFixed(2)}"),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () =>
                                  removeItemFromCart(context, item),
                            ),
                          ));
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
