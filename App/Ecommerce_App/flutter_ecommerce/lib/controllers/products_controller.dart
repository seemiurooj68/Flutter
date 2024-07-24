import 'package:flutter/material.dart';
import '../models/product.dart';
import '../repositories/products_repo.dart';

class ProductsController with ChangeNotifier {
  final ProductsRepo _productsRepo = ProductsRepo();
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    _products = await _productsRepo.fetchProducts();
    notifyListeners();
  }
}
