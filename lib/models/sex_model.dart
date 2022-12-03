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
  static const spred = 2.0;
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
            STTTheme.topBlueCard,
            STTTheme.bottomBlueCard,
          ],
        );
      case Sex.female:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            STTTheme.topPinkCard,
            STTTheme.bottomPinkCard,
          ],
        );
      case Sex.other:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            STTTheme.topGreenCard,
            STTTheme.bottomGreenCard,
          ],
        );
      case Sex.lgbt:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            STTTheme.orangeCard,
            STTTheme.redCard,
          ],
        );
    }
  }

  List<BoxShadow> toShadow() {
    switch (this) {
      case Sex.male:
        return [
          BoxShadow(
            color: STTTheme.bottomBlueCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: STTTheme.topBlueCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
          ),
        ];
      case Sex.female:
        return [
          BoxShadow(
            color: STTTheme.topPinkCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: STTTheme.bottomPinkCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
          ),
        ];
      case Sex.other:
        return [
          BoxShadow(
            color: STTTheme.topGreenCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: STTTheme.bottomGreenCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
          ),
        ];
      case Sex.lgbt:
        return [
          BoxShadow(
            color: STTTheme.orangeCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
            // offset: const Offset(-5, -5),
          ),
          BoxShadow(
            color: STTTheme.redCard.withOpacity(0.5),
            spreadRadius: spred,
            blurRadius: blurRadius,
            // offset: const Offset(5, 5),
          ),
        ];
    }
  }
}
