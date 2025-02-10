import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
      child: Column(
        children: [
          _myPortfolioTextView(),
          const SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Text(
              AppStrings.myPortfolioDescription,
              style: AppFontStyles.bodyTextStyle
                  .copyWith(color: AppColors.lightGreyColor),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
          ),
          const SizedBox(height: 30),
          _appScreenshotsView(context),
        ],
      ),
    );
  }

  _myPortfolioTextView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.my,
          style: AppFontStyles.bigBodyTextStyle
              .copyWith(color: AppColors.boldWhiteColor),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(width: 8),
        Text(
          capitalizeFirstLetter(AppStrings.portfolio.toLowerCase()),
          style: AppFontStyles.bigBodyTextStyle
              .copyWith(color: AppColors.yellowColor),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  _appScreenshotsView(context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width / 1,
      // height: MediaQuery.of(context).size.height / 1.5,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.5,
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5, // 4 containers
        itemBuilder: (context, index) {
          return const Card(
            color: AppColors.whiteColor,
            elevation: 10,
            child: const Center(
              child: Text('Loading....', style: AppFontStyles.bodyTextStyle),
            ),
          );
        },
      ),
    );
  }
}
