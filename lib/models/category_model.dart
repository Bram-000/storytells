import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storytells/themes/theme.dart';

enum Category {
  happy,
  sad,
  funny,
  scary,
  love,
  angry,
  dramatic,
  disgusting,
  pride,
  other,
}

extension CategoryExtension on Category {
  static const spread = 2.0;
  static const blurRadius = 5.0;

  String get name {
    switch (this) {
      case Category.happy:
        return 'cat_happy'.tr;
      case Category.sad:
        return 'cat_sad'.tr;
      case Category.funny:
        return 'cat_funny'.tr;
      case Category.scary:
        return 'cat_scary'.tr;
      case Category.love:
        return 'cat_love'.tr;
      case Category.angry:
        return 'cat_angry'.tr;
      case Category.dramatic:
        return 'cat_dramatic'.tr;
      case Category.disgusting:
        return 'cat_disgusting'.tr;
      case Category.pride:
        return 'cat_pride'.tr;
      case Category.other:
        return 'cat_other'.tr;
    }
  }

  String get emoji {
    switch (this) {
      case Category.happy:
        return "😊";
      case Category.sad:
        return "☹️";
      case Category.funny:
        return "😂";
      case Category.scary:
        return "😱";
      case Category.love:
        return "🥰";
      case Category.angry:
        return "🤬";
      case Category.dramatic:
        return "🤭";
      case Category.disgusting:
        return "🤢";
      case Category.pride:
        return "️‍🌈";
      case Category.other:
        return "🦄";
    }
  }

  Color get color {
    switch (this) {
      case Category.happy:
        return STheme.happy;
      case Category.sad:
        return STheme.sad;
      case Category.funny:
        return STheme.funny;
      case Category.scary:
        return STheme.scary;
      case Category.love:
        return STheme.love;
      case Category.angry:
        return STheme.angry;
      case Category.dramatic:
        return STheme.dramatic;
      case Category.disgusting:
        return STheme.disgusting;
      case Category.pride:
        return STheme.pride;
      case Category.other:
        return STheme.other;
    }
  }

  List<BoxShadow> toShadow() {
    switch (this) {
      case Category.happy:
        return [
          BoxShadow(
            color: STheme.happy.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.sad:
        return [
          BoxShadow(
            color: STheme.sad.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.funny:
        return [
          BoxShadow(
            color: STheme.funny.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.scary:
        return [
          BoxShadow(
            color: STheme.scary.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.love:
        return [
          BoxShadow(
            color: STheme.love.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.angry:
        return [
          BoxShadow(
            color: STheme.angry.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.dramatic:
        return [
          BoxShadow(
            color: STheme.dramatic.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.disgusting:
        return [
          BoxShadow(
            color: STheme.disgusting.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.pride:
        return [
          BoxShadow(
            color: STheme.pride.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
      case Category.other:
        return [
          BoxShadow(
            color: STheme.other.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          )
        ];
    }
  }

// void talk() {
//   print('meow');
// }
}
