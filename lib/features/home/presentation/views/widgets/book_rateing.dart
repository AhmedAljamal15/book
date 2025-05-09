import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRateing extends StatelessWidget {
  const BookRateing({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amberAccent),
        SizedBox(width: 6.3),
        Text("4.8", style: Styles.textStyle16),
        SizedBox(width: 5),
        Text("(2358)", style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
