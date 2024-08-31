import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import '../themes/text_styles.dart';

class RatingWidget extends StatelessWidget {
  final double voteAverage;
  const RatingWidget(this.voteAverage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Assets.images.star.svg(),
        SizedBox(
          width: 3.w,
        ),
        Text(
          '$voteAverage',
          style: TextStyles.ratingText,
        )
      ],
    );
  }
}
