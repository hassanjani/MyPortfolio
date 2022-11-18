import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

import '../../utils/common_functions.dart';
import '../profile_image_widget.dart';
import '../tech_stack_item.dart';

class AboutMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SubHeader(
          number: '01.',
          heading: 'About me',
        ),
        SizedBox(
          height: CommonFunction.isApp(context) ? 16 : 32,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (CommonFunction.isApp(context)) ...[
                    Center(child: ProfileImageWidget()),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                  Text(
                    "Mid-Senior level Mobile Application Developer specialized in android app development. Experienced with Android SDK and external APIs. Well-versed in numerous programming languages including Java, kotlin, Dart. Strong background in project management and customer relations.",
                    style: TextStyle(
                      fontSize: CommonFunction.isApp(context) ? 18 : 16,
                      color: Constants.slate,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'I\'m either in front of a computer screen or with friends which is super cool.',
                    style: TextStyle(
                      fontSize: CommonFunction.isApp(context) ? 18 : 16,
                      color: Constants.slate,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Flexible(
                    child: Text(
                      "I've worked on the following technologies:",
                      style: TextStyle(
                        fontSize: CommonFunction.isApp(context) ? 18 : 16,
                        color: Constants.slate,
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TechStackItem(text: 'Flutter'),
                            SizedBox(
                              height: CommonFunction.isApp(context) ? 8 : 12,
                            ),
                            TechStackItem(text: 'Android'),
                            SizedBox(
                              height: CommonFunction.isApp(context) ? 8 : 12,
                            ),
                            TechStackItem(text: 'iOS'),
                          ],
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TechStackItem(text: 'Java'),
                            SizedBox(
                              height: CommonFunction.isApp(context) ? 8 : 12,
                            ),
                            TechStackItem(text: 'Kotlin'),
                            SizedBox(
                              height: CommonFunction.isApp(context) ? 8 : 12,
                            ),
                            TechStackItem(text: 'Dart'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            !CommonFunction.isApp(context)
                ? Flexible(
                    flex: 6,
                    child: ProfileImageWidget(),
                  )
                : Container()
          ],
        ),
      ],
    );
  }
}
