import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import '../models/category_model.dart';
import '../themes/theme.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Category.values.length,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            decoration: BoxDecoration(
              color: Category.values[index].color,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              // TODO Func for the shadow
              // boxShadow: storyCard.sex.toShadow()),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: Text(
                  Category.values[index].name,
                  style: STTTheme.categoryListStyle,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
