import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),

        SliverToBoxAdapter(child: BestSellerListViewItem()),
      ],
    );
  }
}
