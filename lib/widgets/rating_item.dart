import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  const RatingItem({Key? key, required this.index, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? "assets/icon_star.png" : "assets/icon_star_grey.png",
      width: 20,
    );
  }
}
