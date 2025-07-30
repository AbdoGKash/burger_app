import 'package:burger_app/screens/product_screen.dart';
import 'package:burger_app/viewmodel/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final provider = ProductProvider();
  await provider.initDB();

  runApp(ChangeNotifierProvider(create: (_) => provider, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductScreen(),
    );
  }
}
