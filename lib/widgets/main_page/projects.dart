import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubHeader(
            number: '03.',
            heading: 'Some Things I’ve Built',
          ),
          SizedBox(
            height: 32,
          ),

          /// todo change this
          /// todo generic
          Expanded(
            child: ProjectShowcase(
                title: 'Vehicle Wallet Driver',
                subTitle:
                    'Vehicle Wallet is a refueling platform for companies to manage their fleet refueling.',
                playStoreUrl:
                    "https://play.google.com/store/apps/details?id=sa.vehiclewallet.driver",
                AppStoreUrl:
                    "https://apps.apple.com/sa/app/vehicle-wallet-driver/id1642732035?platform=iphone%20%20https://play.google.com/store/apps/details?id=sa.vehiclewallet.driver"),
          ),
        ],
      ),
    );
  }
}
