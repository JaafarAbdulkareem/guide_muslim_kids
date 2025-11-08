import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/widget/body_about_us_view.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    //delete scaffold using SafeArea 
    return Scaffold(body: SafeArea(child: BodyAboutUsView()));
  }
}
