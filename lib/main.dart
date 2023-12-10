import 'package:ecommerce/src/app.dart';
import 'package:ecommerce/src/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Shop(),
  child: const App(),));
}
