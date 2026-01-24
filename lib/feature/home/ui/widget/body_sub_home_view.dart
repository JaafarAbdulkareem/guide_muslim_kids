import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/widget/custom_app_bar.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/feature/home/ui/widget/home_item.dart';

class BodySubHomeView extends StatelessWidget {
  const BodySubHomeView({super.key, required this.data});
  final SubHomeEntity data;
  @override
  Widget build(BuildContext context) {
    final dataSubHome = data.data;
    return Column(
      children: [
        SizedBox(height: 8.h),
        AspectRatio(
          aspectRatio: 6,
          child: CustomAppBar(title: data.titleAppbar),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.w,
              mainAxisSpacing: 8.h,
              childAspectRatio: 1.2,
            ),
            itemCount: dataSubHome.length,
            itemBuilder: (context, index) {
              return HomeItem(data: dataSubHome[index]);
            },
          ),
        ),
      ],
    );
  }
}
