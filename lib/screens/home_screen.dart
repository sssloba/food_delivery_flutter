import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          TextButton(
            onPressed: () {},
            child: Text('Cart (${currentUser.cart.length})',
                style: const TextStyle(color: Colors.white, fontSize: 20.0)),
          )
        ],
      ),
    );
  }
}
