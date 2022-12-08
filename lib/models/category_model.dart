import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  //TODO: change all colors to match old app
  Color get color {
    switch (this) {
      case Category.happy:
        return Colors.red;
      case Category.sad:
        return Colors.blue;
      case Category.funny:
        return Colors.green;
      case Category.scary:
        return Colors.yellow;
      case Category.love:
        return Colors.purple;
      case Category.angry:
        return Colors.orange;
      case Category.dramatic:
        return Colors.red;
      case Category.disgusting:
        return Colors.red;
      case Category.pride:
        return Colors.red;
      case Category.other:
        return Colors.red;
    }
  }

// void talk() {
//   print('meow');
// }
}
