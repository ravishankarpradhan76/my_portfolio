import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_font_styles.dart';
import 'package:my_portfolio/core/constants/app_strings.dart';
import 'package:my_portfolio/features/widgets/about_widget.dart';
import 'package:my_portfolio/features/widgets/app_bar_widget.dart';
import 'package:my_portfolio/features/widgets/contact_me_widget.dart';
import 'package:my_portfolio/features/widgets/experience_widget.dart';
import 'package:my_portfolio/features/widgets/introduction_widget.dart';
import 'package:my_portfolio/features/widgets/portfolio_widget.dart';
import 'package:my_portfolio/features/widgets/service_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        // appBar: const PreferredSize(
        //     preferredSize: Size.fromHeight(kToolbarHeight),
        //     child: AppBarWidget()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 50.0),
                child: IntroductionWidget(),
              ),
              Container(color: AppColors.bgColor, child: const AboutWidget()),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
                  child: ServiceWidget()),
              Container(
                color: AppColors.bgColor,
                child: const PortfolioWidget(),
              ),
              // const Padding(
              //     padding: EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
              //     child: ExperienceWidget()),
              Container(
                  color: AppColors.bgColor, child: const ContactMeWidget()),
            ],
          ),
        ));
  }
}
