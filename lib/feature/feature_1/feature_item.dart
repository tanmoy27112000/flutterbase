import 'package:flutter/material.dart';
import 'package:flutter_web_base/utils/enum.dart';

class FeatureItem1 extends StatelessWidget {
  const FeatureItem1({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.ctaButton,
    required this.screenType,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;
  final Widget ctaButton;
  final ScreenType screenType;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(16),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade400,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: screenType == ScreenType.tablet
                  ? MediaQuery.of(context).size.width / 1.5
                  : MediaQuery.of(context).size.width / 4,
              child: Text(subtitle),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ctaButton,
          ),
        ],
      ),
    );
  }
}
