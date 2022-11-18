import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/about_me_widget.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/experience.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/introduction.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/projects.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';

class AppHomeBody extends StatelessWidget {
  final PageController pageController;

  AppHomeBody({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 4,
          ),
          child: Introduction(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: AboutMeWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Experience(),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
            top: 48,
            bottom: 48,
          ),
          child: Projects(),
        ),

        /// todo generic
        // Padding(
        //   padding: EdgeInsets.only(
        //     left: CommonFunction.isApp(context) ? 16 : 0,
        //   ),
        //   child: _showcaseWidget(
        //     'Spot',
        //     'YourSkool gives a platform to practise english for children aged 5-12yrs.',
        //     appUrl:
        //         'https://play.google.com/store/apps/details?id=com.madinc.spot',
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget('Vehicle Wallet Driver',
              'Vehicle Wallet is a refueling platform for companies to manage their fleet refueling.',
              appUrl:
                  "https://play.google.com/store/apps/details?id=sa.vehiclewallet.driver",
              appstore:
                  "https://apps.apple.com/sa/app/vehicle-wallet-driver/id1642732035?platform=iphone%20%20https://play.google.com/store/apps/details?id=sa.vehiclewallet.driver"),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget('Framii',
              'It is photo frames App for insta, load new frames from backend, include in app purchases. (Flutter)',
              appUrl:
                  "https://play.google.com/store/apps/details?id=com.dcs.frame_app",
              appstore:
                  "https://apps.apple.com/us/app/framii-insta-story-art-frames/id1535367939"),
        ),
        Padding(
            padding: EdgeInsets.only(
              left: CommonFunction.isApp(context) ? 16 : 0,
            ),
            child: _showcaseWidget('Sneaker Deals',
                'SneakerDeals provides the hottest deals found on the internet from Trusted Authorized retailers that will ship anywhere in the United States and most other countries. (Flutter)',
                appUrl:
                    "https://play.google.com/store/apps/details?id=com.hassanjani.sneaker")),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget('Pushto Idioms',
              'Pashto matallona application has large number of Pashto proverbs. the App help us to access Pashto proverbs as Pashto proverbs are considered among valuable material in Pashto literature. (Java)',
              appUrl:
                  "https://play.google.com/store/apps/details?id=com.pashto.matalona.frontier.technologies"),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Glory Photo Editor',
            'Glory Editor Pro is a photo and video editing tool which provides you stylish effects, filters, grids, and draw tools which take editing to next level. (Kotlin)',
            appUrl:
                'https://play.google.com/store/apps/details?id=com.madinc.photoeffect',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'My Gardener',
            'Build App for gardener service company of malaysia',
            appUrl:
                'https://play.google.com/store/apps/details?id=com.hassankhan.puchong',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Meet Tutor',
            'A LMS App for students and teachers, developed for a freelance client. (Flutter)',
          ),
        ),
      ],
    );
  }

  Widget _showcaseWidget(
    String title,
    String subtitle, {
    String appUrl,
    String github,
    String appstore,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: ProjectShowcase(
        title: title,
        subTitle: subtitle,
        playStoreUrl: appUrl,
        githubUrl: github,
        AppStoreUrl: appstore,
      ),
    );
  }
}
