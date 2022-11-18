import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// todo generic
          Text(
            'Hi, my name is',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: CommonFunction.isApp(context) ? 24 : 16,
              color: Constants.green,
              fontFamily: 'FiraSans',
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Hasan Saleem.',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: CommonFunction.isApp(context) ? 48 : 64,
              color: Constants.white,
              fontFamily: 'FiraSans',
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'I build mobile apps.',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'FiraSans',
              fontSize: CommonFunction.isApp(context) ? 48 : 64,
              color: Constants.lightSlate,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "I\'m an aspirant Software Engineer, I\'m also interested in Music and meeting new friends of course. I\'ve always been interested in computers all my life.",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              fontFamily: 'FiraSans',
              color: Constants.slate,
            ),
          ),
        ],
      ),
    );
  }
}
