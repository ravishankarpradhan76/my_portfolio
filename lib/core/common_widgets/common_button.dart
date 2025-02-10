import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 43,
        width: 123,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: AppColors.buttonColor,
        ),
        child: Center(
          child: Text(
            AppStrings.contactUs,
            style: AppFontStyles.bodyTextStyle
                .copyWith(color: AppColors.blackColor),
          ),
        ));
  }
}
