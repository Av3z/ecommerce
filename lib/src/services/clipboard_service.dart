import 'package:ecommerce/src/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClipboardService {
  // Função para converter a lista de compras em texto
  String cartToText(List<Product> cart) {
    String text = "Lista de Compras: 🛒\n\n";
    for (int i = 0; i < cart.length; i++) {
      text +=
          "${i + 1} *${cart[i].name}* - R\$${cart[i].price.toStringAsFixed(2)}\n";
    }
    return text;
  }

  void copy(context, cart) async {
    String cartText = cartToText(cart);

    // Coloca o texto no clipboard
    await Clipboard.setData(ClipboardData(text: cartText));

    // Mostra um snackbar ou outra mensagem para indicar que o texto foi copiado
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Texto copiado para o clipboard'),
      ),
    );
  }
}
