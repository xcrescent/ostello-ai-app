import 'package:flutter/material.dart';

import '../../../const/resource.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../model/eighteen_item_model.dart';

// ignore: must_be_immutable
class EighteenItemWidget extends StatelessWidget {
  EighteenItemWidget(
    this.eighteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EighteenItemModel eighteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: const EdgeInsets.only(
              bottom: 16,
            ),
            color: appTheme.whiteA700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
              height: 146,
              width: 126,
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: R.imgRectangle19959146x125,
                    height: 146,
                    width: 125,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: R.imgFrame,
                    height: 24,
                    width: 24,
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(
                      top: 8,
                      right: 9,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 60,
                      margin: const EdgeInsets.only(
                        left: 8,
                        bottom: 7,
                      ),
                      child: Text(
                        eighteenItemModelObj.offer!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumWhiteA700.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              top: 8,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 3,
                  ),
                  decoration: AppDecoration.gradientCyanToBlue.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                          bottom: 2,
                        ),
                        child: Text(
                          eighteenItemModelObj.verified!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: eighteenItemModelObj?.verified1,
                        height: 18,
                        width: 18,
                        margin: const EdgeInsets.only(
                          left: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  eighteenItemModelObj.shiskaCoaching!,
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: R.imgStarsFill1Wgh,
                      height: 24,
                      width: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                        bottom: 2,
                      ),
                      child: Text(
                        eighteenItemModelObj.fortyFive!,
                        style: CustomTextStyles.titleSmallBlack900ExtraBold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                        top: 3,
                      ),
                      child: Text(
                        eighteenItemModelObj.rating!,
                        style: CustomTextStyles.titleSmallBlack900ExtraBold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      eighteenItemModelObj.academics!,
                      style: theme.textTheme.titleSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      child: Text(
                        eighteenItemModelObj.text!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      child: Text(
                        eighteenItemModelObj.com!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      child: Text(
                        eighteenItemModelObj.text1!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      child: Text(
                        eighteenItemModelObj.sci!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      eighteenItemModelObj.kalkaji!,
                      style: theme.textTheme.titleSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      child: Text(
                        eighteenItemModelObj.text2!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      child: Text(
                        eighteenItemModelObj.kmsCounter!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
