import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/widgets/nearby_restaurant_item.dart';

class NearbyRestaurantList extends StatelessWidget {
  const NearbyRestaurantList({
    required this.restaurants,
    super.key,
  });

  final List<Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: restaurants
          .map((restaurant) => NearbyRestaurantItem(restaurant: restaurant))
          .toList(),
    );
  }
}
