import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:storytells/models/category_model.dart';
import 'package:storytells/models/sex_model.dart';
import 'package:storytells/widgets/top_row_card.dart';

import '../models/card_model.dart';
import '../themes/theme.dart';
import 'bottom_row_card.dart';

class StoryCard extends StatelessWidget {
  final Story storyCard;

  const StoryCard({super.key, required this.storyCard});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 55.h,
        decoration: BoxDecoration(
            gradient: storyCard.sex.toColor(),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: storyCard.sex.toShadow()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TopRowCard(
              age: storyCard.age,
              sex: storyCard.sex.abbreviation,
              category: storyCard.category.emoji,
            ),
            Container(
              height: 40.h,
              width: 70.w,
              decoration: const BoxDecoration(
                color: STheme.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    storyCard.story,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const BottomRowCard()
          ],
        ),
      ),
    );
  }
}
