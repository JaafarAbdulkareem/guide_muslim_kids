import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/extension.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/Aldeen/logic/aldeen_entity.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/widget/aldeen_ihsan_item.dart';

class AldeenItem extends StatelessWidget {
  final AldeenEntity data;

  const AldeenItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4,
      child: GestureDetector(
        onTap: () {
          RouteName.aldeenDetails.pushAnimatedNamed(context, arguments: data);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColor.athkarContainTap,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  data.title,
                  style: AppTextStyle.fontBold24(context),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: data.image != null
                      ? Image.asset(data.image!, fit: BoxFit.cover)
                      : AldeenIhsanItem(data: data),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
