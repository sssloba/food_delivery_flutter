import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: onTap,
        child: Stack(clipBehavior: Clip.none, children: [
          const Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 30,
          ),
          Positioned(
            top: -13,
            right: -13,
            child: Material(
              type: MaterialType.circle,
              elevation: 2.0,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '${currentUser.cart.length}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
