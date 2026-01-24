import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/responsive_layout.dart';
import 'package:guide_muslim_kids/core/widget/custom_app_bar.dart';
import 'package:guide_muslim_kids/feature/home/data/home.dart';
import 'package:guide_muslim_kids/feature/home/ui/widget/home_item.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = getDataHome(context);
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        AspectRatio(
          aspectRatio: 6,
          child: CustomAppBar(title: S.of(context).titleHome),
        ),
        Expanded(
          child: ResponsiveLayout(
            mobileBody: _buildGrid(context, data, 2),
            tabletBody: _buildGrid(context, data, 3),
          ),
        ),
      ],
    );
  }

  Widget _buildGrid(
    BuildContext context,
    List<dynamic> data,
    int crossAxisCount,
  ) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: MediaQuery.of(context).size.width * 0.02,
        mainAxisSpacing: MediaQuery.of(context).size.height * 0.01,
        childAspectRatio: 1.2,
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return HomeItem(data: data[index]);
      },
    );
  }
}
