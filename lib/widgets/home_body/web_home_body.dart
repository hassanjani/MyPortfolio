import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';
import 'package:flutter_developer_portfolio/widgets/social_handles/social_handles.dart';

import '../bottom_line_widget.dart';
import '../email_widget.dart';
import '../main_page/about_me_widget.dart';
import '../main_page/experience.dart';
import '../main_page/introduction.dart';
import '../main_page/projects.dart';

class WebHomeBody extends StatelessWidget {
  final PageController pageController;

  WebHomeBody({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: RawScrollbar(
          controller: pageController,
          thickness: 8,
          interactive: true,
          thumbColor: Constants.green,
          radius: Radius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SocialHandles(),
                    SizedBox(
                      height: 16,
                    ),
                    BottomLineWidget(),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 128),
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      controller: pageController,
                      children: [
                        Introduction(),
                        AboutMeWidget(),
                        Experience(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Projects(),
                        ),

                        /// todo pass this through constants
                        ///
                        _showcaseWidget('Sneaker Deals',
                            'SneakerDeals provides the hottest deals found on the internet from Trusted Authorized retailers that will ship anywhere in the United States and most other countries. (Flutter)',
                            appUrl:
                                "https://play.google.com/store/apps/details?id=com.hassanjani.sneaker",
                            appstore:
                                "https://apps.apple.com/us/app/sneaker-deals-shopping-deals/id1581405844"),
                        _showcaseWidget('Framii',
                            'It is photo frames App for insta, load new frames from backend, include in app purchases. (Flutter)',
                            appUrl:
                                "https://play.google.com/store/apps/details?id=com.dcs.frame_app",
                            appstore:
                                "https://apps.apple.com/us/app/framii-insta-story-art-frames/id1535367939"),
                        _showcaseWidget(
                          'Spot',
                          'SPOT – Phone Locating, GPS Tracking and Texting all in one place',
                          appUrl:
                              "https://play.google.com/store/apps/details?id=com.madinc.spot",
                        ),
                        _showcaseWidget('Pushto Idioms',
                            'Pashto matallona application has large number of Pashto proverbs. the App help us to access Pashto proverbs as Pashto proverbs are considered among valuable material in Pashto literature. (Java)',
                            appUrl:
                                "https://play.google.com/store/apps/details?id=com.pashto.matalona.frontier.technologies"),
                        _showcaseWidget(
                          'Glory Photo Editor',
                          'Glory Editor Pro is a photo and video editing tool which provides you stylish effects, filters, grids, and draw tools which take editing to next level. (Kotlin)',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=com.madinc.photoeffect',
                        ),
                        _showcaseWidget(
                          'My Gardener',
                          'Build App for gardener service company of malaysia',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=com.hassankhan.puchong',
                        ),
                        _showcaseWidget(
                          'Meet Tutor',
                          'A LMS App for students and teachers, developed for a freelance client. (Flutter)',
                        ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 48),
                        //   child: OtherProjects(),
                        // ),
                      ],
                    ),
                  ),
                ),
                EmailWidget(),
              ],
            ),
          ),
        ),
      ),
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
