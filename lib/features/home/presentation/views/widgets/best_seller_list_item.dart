import 'package:book/constants.dart';
import 'package:book/core/utils/assets.dart';
import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentation/views/widgets/book_rateing.dart';
import 'package:book/features/home/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/bookView");
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomBestSellerListItem();
        },
      ),
    );
  }
}
