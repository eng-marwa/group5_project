import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/colors.gen.dart';
import '../themes/text_styles.dart';

class MovieSection extends StatelessWidget {
  final String title;
  const MovieSection(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.title),
        Container(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 8.w, vertical: 4.h),
          decoration: BoxDecoration(
              border: Border.all(color: ColorName.strokeColor, width: 1),
              borderRadius: BorderRadius.circular(20.r)),
          child: Text(
            'See more',
            style: TextStyles.more,
          ),
        )
      ],
    );
  }
}
