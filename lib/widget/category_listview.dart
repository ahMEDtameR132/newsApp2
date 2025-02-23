import 'package:flutter/material.dart';
import 'package:newsappcubit/widget/category_new.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryNew();
        },
        itemCount: 5,
      ),
    );
  }
}
