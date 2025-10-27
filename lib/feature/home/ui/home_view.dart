import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/home/ui/widget/body_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BodyHomeView()));
  }
}
