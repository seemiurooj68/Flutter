import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/cart_item.dart';

class CartsRepo {
  final String baseUrl = 'https://fakestoreapi.com/carts';

  Future<List<CartItem>> fetchCartItems() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => CartItem.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load cart items');
    }
  }

  Future<void> addToCart(int productId) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      body: json.encode({
        'userId': 1,
        'date': DateTime.now().toIso8601String(),
        'products': [
          {'productId': productId, 'quantity': 1},
        ],
      }),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      print('Added to cart successfully');
    } else {
      print('Failed to add to cart: ${response.statusCode}');
      throw Exception('Failed to add to cart');
    }
  }

  Future<void> updateCartItem(int id, int quantity) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$id'),
      body: json.encode({'quantity': quantity}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to update cart item');
    }
  }

  Future<void> deleteCartItem(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/$id'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete cart item');
    }
  }
}
