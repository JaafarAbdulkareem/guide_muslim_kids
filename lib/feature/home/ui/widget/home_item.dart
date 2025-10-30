import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/extension.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';

class HomeItem extends StatelessWidget {
  final HomeEntity data;

  const HomeItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        data.pageName.pushNamed(context);
      },
      child: Card(
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
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    data.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      shadows: [
                        Shadow(
                          blurRadius: 3,
                          color: Colors.black54,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
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
