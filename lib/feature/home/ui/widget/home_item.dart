import 'package:flutter/material.dart';

import 'package:guide_muslim_kids/core/route/extension.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';

class HomeItem extends StatelessWidget {
  final HomeEntity data;

  const HomeItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        data.pageName.pushAnimatedNamed(context, arguments: data.subHome);
      },
      child: Card(
        color: Theme.of(context).cardColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: [
            Image.asset(
              data.image,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),

            // Centered title text
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    data.title,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.fontBold22(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
