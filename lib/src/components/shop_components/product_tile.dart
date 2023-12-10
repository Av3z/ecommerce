import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget{
  final Product product;

  const ProductTile({super.key, required this.product});

  void addToCart(context) {
    showDialog(context: context, builder: (context) => AlertDialog(
      content: const Text('Quer adicionar este item ao seu carrinho?'),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),

        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            context.read<Shop>().addToCart(product);
          },
          child: const Text('yes'),
        ),
      ],
    ));
  }

  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
        ),
      width: 300,
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        // Product image
        Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(product.imagePath),
                  ),
                ),
                ),
              ),
            const SizedBox(height: 10,),
            // product name 
            Text(product.name, style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 5,),
            // product description
            Text(product.description,
              maxLines: 2, // Defina o número máximo de linhas desejado
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        // price + add button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('R\$ ${product.price.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.grey[700],
            fontSize: 16,
            fontWeight: FontWeight.bold),),
           ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Ajuste o valor conforme necessário
                ),
                padding: const EdgeInsets.all(8.0), // Ajuste o valor conforme necessário
              ),
              onPressed: () => addToCart(context), 
              child: const Icon(Icons.add, color: Colors.black,),
            )
          ],
        )

      ]),
    );
  }
}