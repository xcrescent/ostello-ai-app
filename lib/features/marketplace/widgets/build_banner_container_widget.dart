import 'package:flutter/material.dart';

import '../../../core/theme/theme_helper.dart';

class BuildBannerContainer extends StatelessWidget {
  const BuildBannerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 144,
              width: 304,
              decoration: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
            ),
            Container(
              height: 144,
              width: 304,
              margin: const EdgeInsets.only(
                left: 12,
              ),
              decoration: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
