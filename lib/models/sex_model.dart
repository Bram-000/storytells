import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../themes/theme.dart';

enum Sex {
  male,
  female,
  other,
  lgbt,
}

extension SexExtension on Sex {
  static const spread = 2.0;
  static const blurRadius = 5.0;

  String get abbreviation {
    switch (this) {
      case Sex.male:
        return 'M'.tr;
      case Sex.female:
        return 'F'.tr;
      case Sex.other:
        return 'O'.tr;
      case Sex.lgbt:
        return 'LGBT+'.tr;
    }
  }

  String get name {
    switch (this) {
      case Sex.male:
        return 'male'.tr;
      case Sex.female:
        return 'female'.tr;
      case Sex.other:
        return 'other'.tr;
      case Sex.lgbt:
        return 'lgbt+'.tr;
    }
  }

  LinearGradient toColor() {
    switch (this) {
      case Sex.male:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            STheme.topBlueCard,
            STheme.bottomBlueCard,
          ],
        );
      case Sex.female:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            STheme.topPinkCard,
            STheme.bottomPinkCard,
          ],
        );
      case Sex.other:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            STheme.topGreenCard,
            STheme.bottomGreenCard,
          ],
        );
      case Sex.lgbt:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            STheme.topLCard,
            STheme.bottomLCard,
          ],
        );
    }
  }

  List<BoxShadow> toShadow() {
    switch (this) {
      case Sex.male:
        return [
          BoxShadow(
            color: STheme.bottomBlueCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: STheme.topBlueCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          ),
        ];
      case Sex.female:
        return [
          BoxShadow(
            color: STheme.topPinkCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: STheme.bottomPinkCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          ),
        ];
      case Sex.other:
        return [
          BoxShadow(
            color: STheme.topGreenCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: STheme.bottomGreenCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
          ),
        ];
      case Sex.lgbt:
        return [
          BoxShadow(
            color: STheme.topLCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
            // offset: const Offset(-5, -5),
          ),
          BoxShadow(
            color: STheme.bottomLCard.withOpacity(0.5),
            spreadRadius: spread,
            blurRadius: blurRadius,
            // offset: const Offset(5, 5),
          ),
        ];
    }
  }
}
