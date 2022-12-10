import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/theme.dart';

class BottomRowCard extends StatelessWidget {
  final int numberOfLikes;
  final int numberOfComments;
  final bool isLikedByMe;
  const BottomRowCard({
    Key? key,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.isLikedByMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  isLikedByMe ? Icons.favorite : Icons.favorite_border,
                  color: STheme.white,
                ),
              ),
              Text(
                numberOfLikes.toString(),
                style: STheme.cardRowStyle,
              )
            ],
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.share,
              color: STheme.white,
            ),
          ),
          Row(
            children: [
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.comment,
                  color: STheme.white,
                ),
              ),
              Text(
                numberOfComments.toString(),
                style: STheme.cardRowStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
