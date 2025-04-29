import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 57, bottom: 17),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 25),
          const Spacer(),
          GestureDetector(onTap: () {
            GoRouter.of(context).push("/searchView");
          }, child: Icon(Icons.search)),
        ],
      ),
    );
  }
}
