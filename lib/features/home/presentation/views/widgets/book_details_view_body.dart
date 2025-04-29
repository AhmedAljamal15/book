import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentation/views/widgets/book_rateing.dart';
import 'package:book/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:book/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book/features/home/presentation/views/widgets/custom_price.dart';
import 'package:book/features/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              CustomAppBarBookDetails(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .2),
                child: CustomBookItem(),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: Text(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  "The Walk Into The Shadow",
                  style: Styles.textStyle30,
                ),
              ),
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "Ahmed Gad_x",
                style: Styles.textStyle18,
              ),
              SizedBox(height: 20),
              BookRateing(),
              SizedBox(height: 20),
              CustomPrice(),
              Expanded(child: SizedBox(height: 20)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  child: Text(
                    "You can read the book for free",
                    style: Styles.textStyle14,
                  ),
                ),
              ),
              SimilerBooksListView(),
            ],
          ),
        ),
      ],
    );
  }
}
