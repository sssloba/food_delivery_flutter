import 'package:flutter/material.dart';

class RaitingStars extends StatelessWidget {
  const RaitingStars(this.raitng, {Key key}) : super(key: key);

  final int raitng;

  @override
  Widget build(BuildContext context) {
    String stars = '';
    for (int i = 0; i < raitng; i++) {
      stars += '⭐  ';
    }
    stars.trim();
    return Text(
      stars,
      style: const TextStyle(fontSize: 18.0),
    );
  }
}
