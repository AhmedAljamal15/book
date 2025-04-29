import 'package:book/features/search/presentation/views/widgets/custom_text_form_field.dart';
import 'package:book/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(),
        const SizedBox(height: 20),
        Text("Search Result"),
        const SizedBox(height: 20),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
