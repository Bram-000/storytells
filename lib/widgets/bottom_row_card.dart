import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../themes/theme.dart';

class BottomRowCard extends StatelessWidget {
  const BottomRowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.favorite_border,
            color: STTTheme.white,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.share,
            color: STTTheme.white,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.comment,
            color: STTTheme.white,
          ),
        ),
      ],
    );
  }
}
