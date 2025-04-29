import 'package:book/features/home/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,

      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomBestSellerListItem();
      },
    );
  }
}
