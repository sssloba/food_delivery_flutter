import 'package:flutter/material.dart';

class OrdersSearchBar extends StatelessWidget {
  const OrdersSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0.8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:
                BorderSide(width: 0.8, color: Theme.of(context).primaryColor),
          ),
          hintText: 'Search Food or Restaurant',
          prefixIcon: const Icon(
            Icons.search,
            size: 30.0,
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
