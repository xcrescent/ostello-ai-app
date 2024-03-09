import 'package:flutter/material.dart';

import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';

/// Common widget
class BuildEntranceExamOption extends StatelessWidget {
  const BuildEntranceExamOption({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: image,
            height: 40,
            width: 40,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            name,
            style: CustomTextStyles.titleSmallBlack90001.copyWith(
              color: appTheme.black90001.withOpacity(0.68),
            ),
          ),
        ],
      ),
    );
  }
}
