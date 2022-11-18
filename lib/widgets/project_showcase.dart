import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import '../utils/common_functions.dart';

class ProjectShowcase extends StatefulWidget {
  final String title;
  final String subTitle;
  final String githubUrl;
  final String playStoreUrl;
  final String AppStoreUrl;

  ProjectShowcase({
    this.title,
    this.subTitle,
    this.githubUrl,
    this.playStoreUrl,
    this.AppStoreUrl,
  });

  @override
  _ProjectShowcaseState createState() => _ProjectShowcaseState();
}

class _ProjectShowcaseState extends State<ProjectShowcase> {
  List<Widget> _showcaseList;
  String _playStore;

  @override
  void initState() {
    /// todo generic
    _playStore = 'playstore_dark';
    if (widget.title == 'Spot') {
      _showcaseList = [
        _placeholder('s1'),
        _placeholder('s2'),
        _placeholder('s3'),
        _placeholder('s4'),
        _placeholder('s5'),
      ];
    } else if (widget.title == 'Framii') {
      _showcaseList = [
        _placeholder('f1'),
        _placeholder('f2'),
        _placeholder('f3'),
        _placeholder('f4'),
        _placeholder('f5'),
        _placeholder('f6'),
      ];
    } else if (widget.title == 'Sneaker Deals') {
      _showcaseList = [
        _placeholder('sn1'),
        _placeholder('sn2'),
        _placeholder('sn3'),
        _placeholder('sn4'),
        _placeholder('sn5'),
      ];
    } else if (widget.title == 'Glory Photo Editor') {
      _showcaseList = [
        _placeholder('g1'),
        _placeholder('g2'),
        _placeholder('g3'),
        _placeholder('g4'),
        _placeholder('g5'),
      ];
    } else if (widget.title == 'Pushto Idioms') {
      _showcaseList = [
        _placeholder('p1'),
        _placeholder('p2'),
        _placeholder('p3'),
        _placeholder('p4'),
        _placeholder('p5'),
      ];
    } else if (widget.title == 'Meet Tutor') {
      _showcaseList = [
        _placeholder('meettutor'),
      ];
    } else if (widget.title == 'My Gardener') {
      _showcaseList = [
        _placeholder('m1'),
        _placeholder('m2'),
        _placeholder('m3'),
        _placeholder('m4'),
      ];
    } else if (widget.title == 'Vehicle Wallet Driver') {
      _showcaseList = [
        _placeholder('v1'),
        _placeholder('v2'),
        _placeholder('v3'),
        _placeholder('v4'),
        _placeholder('v5'),
        _placeholder('v6'),
      ];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                widget.title.toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Constants.lightestSlate,
                  fontFamily: 'FiraSans',
                ),
              ),
              SizedBox(
                width: widget.playStoreUrl != null ? 16 : 0,
              ),
              widget.playStoreUrl != null
                  ? InkWell(
                      onTap: () {
                        CommonFunction.openFromUrl(widget.playStoreUrl);
                      },
                      child: Card(
                        shadowColor: Constants.green,
                        color: Constants.navy,
                        elevation: 5,
                        child: Image.asset(
                          'asset/google_play.png',
                          fit: BoxFit.fill,
                          width: 130,
                          height: 36,
                        ),
                      ),
                    )
                  : Container(),
              SizedBox(
                width: widget.AppStoreUrl != null ? 16 : 0,
              ),
              widget.AppStoreUrl != null
                  ? InkWell(
                      onTap: () {
                        CommonFunction.openFromUrl(widget.AppStoreUrl);
                      },
                      child: Card(
                        shadowColor: Constants.green,
                        color: Constants.navy,
                        elevation: 5,
                        child: Image.asset(
                          'asset/appstore.png',
                          fit: BoxFit.fill,
                          width: 130,
                          height: 36,
                        ),
                      ),
                    )
                  : Container(),
              widget.githubUrl != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: InkWell(
                        onTap: () {
                          CommonFunction.openFromUrl(widget.githubUrl);
                        },
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              _playStore = 'github_light';
                            });
                          } else {
                            setState(() {
                              _playStore = 'github_dark';
                            });
                          }
                        },
                        child: Image.asset(
                          'asset/$_playStore.png',
                          width: 16,
                          height: 16,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            widget.subTitle,
            style: TextStyle(
              fontSize: CommonFunction.isApp(context) ? 18 : 16,
              color: Constants.green,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _showcaseList,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _placeholder(String image) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: widget.title == 'Intellect Dashboard' ? 16 : 0,
      ),
      child: Image.asset(
        'asset/$image.png',
      ),
    );
  }
}
