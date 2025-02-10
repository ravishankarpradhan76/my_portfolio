import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgColor,
      title: _titleView(),
      actions: [
        _subTitleView(),
      ],
    );
  }

  _titleView() {
    return Row(
      children: [
        const Text(
          AppStrings.about,
          style: AppFontStyles.appBarTitleStyle,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          AppStrings.me,
          style: AppFontStyles.appBarTitleStyle
              .copyWith(color: AppColors.yellowColor),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  _subTitleView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _subTitleText(text: AppStrings.home, isSelected: true),
        const SizedBox(
          width: 15,
        ),
        _subTitleText(text: AppStrings.about.toUpperCase() ?? ""),
        const SizedBox(
          width: 15,
        ),
        _subTitleText(text: AppStrings.service),
        const SizedBox(
          width: 15,
        ),
        _subTitleText(text: AppStrings.portfolio),
        const SizedBox(
          width: 15,
        ),
        _subTitleText(text: AppStrings.contact),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  _subTitleText({required String text, bool isSelected = false}) {
    return Text(
      text ?? "",
      style: isSelected == true
          ? AppFontStyles.appBarSubTitleStyle
              .copyWith(color: AppColors.whiteColor)
          : AppFontStyles.appBarSubTitleStyle,
      overflow: TextOverflow.ellipsis,
    );
  }
}
