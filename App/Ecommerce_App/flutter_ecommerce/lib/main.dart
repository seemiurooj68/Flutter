import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/cart_controller.dart';
import 'controllers/products_controller.dart';
import 'screens/products_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartController()),
        ChangeNotifierProvider(create: (_) => ProductsController()),
      ],
      child: MaterialApp(
        title: 'Flutter E-commerce',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => ProductsScreen(),
          '/cart': (context) => CartScreen(),
        },
      ),
    );
  }
}
