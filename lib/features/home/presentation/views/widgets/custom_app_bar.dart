import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 57, bottom: 17),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 25),
          const Spacer(),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
