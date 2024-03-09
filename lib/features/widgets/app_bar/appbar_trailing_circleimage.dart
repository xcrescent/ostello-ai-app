import 'package:flutter/material.dart';

import '../../../core/theme/app_decoration.dart';
import '../custom_image_view.dart';

class AppBarTrailingCircleImage extends StatelessWidget {
  AppBarTrailingCircleImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder16,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 32,
          width: 32,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            16,
          ),
        ),
      ),
    );
  }
}
