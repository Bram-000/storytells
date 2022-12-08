import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import '../models/category_model.dart';
import '../themes/theme.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Category.values.length,
        itemBuilder: (_, index) {
          return SingleCategoryWidget(
            index: index,
          );
        },
      ),
    );
  }
}

class SingleCategoryWidget extends StatelessWidget {
  const SingleCategoryWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      decoration: BoxDecoration(
        color: Category.values[index].color,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        // TODO Func for the shadow
        boxShadow: Category.values[index].toShadow(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Text(
            Category.values[index].name,
            style: STheme.categoryListStyle,
          ),
        ),
      ),
    );
  }
}
