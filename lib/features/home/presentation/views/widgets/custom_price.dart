import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPrice extends StatelessWidget {
  const CustomPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                color: Colors.white,
              ),
              child: Text(
                r"19.99 $",
                textAlign: TextAlign.center,
                style: Styles.textStyle30.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Colors.orange,
              ),
              child: Center(
                child: Text(
                  "Free Preview",
                  style: Styles.textStyle18.copyWith(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
