import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/theme.dart';

class BottomRowCard extends StatelessWidget {
  const BottomRowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite_border,
              color: STheme.white,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.share,
              color: STheme.white,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.comment,
              color: STheme.white,
            ),
          ),
        ],
      ),
    );
  }
}
