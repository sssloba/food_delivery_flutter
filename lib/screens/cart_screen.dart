import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';
import 'package:flutter_food_delivery_ui/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    for (Order order in currentUser.cart) {
      totalPrice += order.quantity * order.food.price;
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart (${currentUser.cart.length})'),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: currentUser.cart.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.cart[index];
            return CartItem(order: order);
          }
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Estimated delivery Time',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '25 min',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Total Cost:',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\$${totalPrice.toStringAsFixed(2)}',
                      style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 100.0),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 1,
            color: Colors.grey,
          );
        },
      ),
      bottomSheet: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, -1),
                blurRadius: 6.0,
              ),
            ]),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'CHECKOUT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
