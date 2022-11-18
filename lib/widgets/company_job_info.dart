import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class CompanyJobInfo extends StatelessWidget {
  final int selectedIndex;

  CompanyJobInfo({
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    if (selectedIndex == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// todo generic
          _position('Mobile Application Developer', 'Innovo Technologies',
              'https://innovotechnologies.com/', context),
          SizedBox(
            height: 8,
          ),
          _period('January 2022', 'Present', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Responsible for Business requirements understanding and translating them into technical requirements.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Responsible to produce an architecture, design and implementation that is safe, reliable, robust, modular, maintainable, scalable, and efficient.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'On a daily basis, I communicate with multi-disciplinary teams of Api developers, designers, and project managers.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Multiple conversations and demos within the team to learn more about flutter and make our existing apps more scalable.',
              context),
        ],
      );
    } else if (selectedIndex == 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position(
              'Mobile App Developer', 'Madinc', 'https://madinc.me/', context),
          SizedBox(
            height: 8,
          ),
          _period('April 2021', 'January 2022', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Responsible for implementing new solutions/feature-sets and maintaining existing applications for Android and IOS.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              "Responsible for staying current with the latest changes in the Mobile Development space.",
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              "Accountable for the successful delivery and implementation of complex enterprise-scale mobile projects involving multiple back-end systems, as well as new technologies/innovations.",
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              "Mentor intermediate and senior developers by sharing knowledge of best practices, standards and experiences, while removing roadblocks/challenges.",
              context),
        ],
      );
    } else if (selectedIndex == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position(
              'Mobile Application Developer',
              'Dinkum Consulting Solutions',
              'https://dconsulting.pk/aboutus/',
              context),
          SizedBox(
            height: 8,
          ),
          _period('Dec 2019', 'November 2020', context),
          SizedBox(
            height: 16,
          ),
          _jobRole('Start Work on Google’s new technology Flutter.', context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Designs, develops, codes, tests, and debugs mobile applications to meet provided user requirements and to address identified defects.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Perform analysis of customer requirements and assist project management in the development of cost and time estimates and project status.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Provide production support for applications, assist others with problem resolution, and respond with solutions to both functional and technical issues in a timely manner.',
              context),
        ],
      );
    } else if (selectedIndex == 3) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Android Developer Intern', 'Techsoft International',
              'https://www.techsoftinternational.com/', context),
          SizedBox(
            height: 8,
          ),
          _period('May/2018', 'August/2019', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Improved app functionality and logics by writing modular code',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Design UI for android apps, worked on xml and java', context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Work with senior developer to manage large, complex design projects for corporate clients.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Created, tested, debugged, documented and implemented Delivery Service App for Company KDS utilizing skills in java, xml.',
              context),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Computer programing teacher ', 'Swat Polytechnic College',
              'https://m.facebook.com/spicswat/?_rdr', context),
          SizedBox(
            height: 8,
          ),
          _period('February 2020', 'March 2021 (part time)', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Employed strong communication skills to “Train the Trainers”',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole('Teaching basic programming', context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Teaching basics web development, mobile development and Freelancing Skills',
              context),
        ],
      );
    }
  }

  Widget _position(
      String position, String company, String link, BuildContext context) {
    return Row(
      children: [
        Text(
          position,
          style: TextStyle(
            fontSize: 20,
            color: Constants.white,
            fontFamily: 'FiraSans',
            fontWeight: CommonFunction.isApp(context)
                ? FontWeight.w600
                : FontWeight.normal,
          ),
        ),
        CommonFunction.isApp(context)
            ? Container()
            : InkWell(
                onTap: () {
                  CommonFunction.openFromUrl(link);
                },
                child: Text(
                  ' @' + company,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                    color: Constants.green,
                  ),
                ),
              ),
      ],
    );
  }

  Widget _period(String start, String end, BuildContext context) {
    return Text(
      '$start - $end',
      style: TextStyle(
        fontSize: CommonFunction.isApp(context) ? 18 : 16,
        color: Constants.slate,
        fontFamily: 'FiraSans',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _jobRole(String value, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2),
          child: Icon(
            Icons.play_arrow,
            size: CommonFunction.isApp(context) ? 20 : 16,
            color: Constants.green,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
