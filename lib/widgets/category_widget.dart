import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:storytells/modules/Home/controllers/home_controller.dart';

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

class SingleCategoryWidget extends GetWidget<HomeController> {
  const SingleCategoryWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () => controller.filter(Category.values[index]),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: Category.values[index].color,
            shadowColor: Category.values[index].color.withOpacity(0.5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          child: Text(
            Category.values[index].name,
            style: STheme.categoryListStyle,
          ),
        ),
      ),
    );
  }
}
