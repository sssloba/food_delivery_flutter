import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/screens/cart_screen.dart';
import 'package:flutter_food_delivery_ui/widgets/cart_button.dart';
import 'package:flutter_food_delivery_ui/widgets/nearby_restaraunts.dart';
import 'package:flutter_food_delivery_ui/widgets/recent_orders.dart';
import 'package:flutter_food_delivery_ui/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text('Food Delivery'),
        actions: <Widget>[
          CartButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CartScreen(),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            OrdersSearchBar(),
            RecentOrders(),
            NearbyRestaraunts(),
          ]),
    );
  }
}
