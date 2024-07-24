import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/cart_controller.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: FutureBuilder(
        future: Provider.of<CartController>(context, listen: false).fetchCartItems(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Consumer<CartController>(
              builder: (context, cartController, child) {
                return ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final cartItem = cartController.cartItems[index];
                    return ListTile(
                      title: Text('Product ID: ${cartItem.productId}'),
                      subtitle: Text('Quantity: ${cartItem.quantity}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              if (cartItem.quantity > 1) {
                                cartController.updateCartItem(cartItem.id, cartItem.quantity - 1);
                              } else {
                                cartController.deleteCartItem(cartItem.id);
                              }
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              cartController.updateCartItem(cartItem.id, cartItem.quantity + 1);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
