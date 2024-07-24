import 'package:flutter/material.dart';
import '../models/cart_item.dart';
import '../repositories/carts_repo.dart';

class CartController with ChangeNotifier {
  final CartsRepo _cartsRepo = CartsRepo();
  List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  Future<void> fetchCartItems() async {
    _cartItems = await _cartsRepo.fetchCartItems();
    notifyListeners();
  }

  Future<void> addToCart(int productId) async {
    await _cartsRepo.addToCart(productId);
    await fetchCartItems();
  }

  Future<void> updateCartItem(int id, int quantity) async {
    await _cartsRepo.updateCartItem(id, quantity);
    await fetchCartItems();
  }

  Future<void> deleteCartItem(int id) async {
    await _cartsRepo.deleteCartItem(id);
    await fetchCartItems();
  }
}
