import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/theme.dart';

class SoonToView extends StatelessWidget {
  const SoonToView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            title: TextButton(
              onPressed: () {},
              child: Text(
                "soon_to_delete".tr,
                style: STheme.appBarTitleStyle,
              ),
            ),
          ),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
