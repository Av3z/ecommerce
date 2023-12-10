import 'package:ecommerce/src/app.dart';
import 'package:ecommerce/src/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(ChangeNotifierProvider(create: (context) => Shop(),
  child: const App(),));
}
