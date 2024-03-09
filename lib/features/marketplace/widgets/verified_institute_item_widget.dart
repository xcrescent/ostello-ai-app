import 'package:flutter/material.dart';
import 'package:ostello_ai_app/l10n/l10n.dart';

import '../../../const/resource.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../model/verified_institute_item_model.dart';

// ignore: must_be_immutable
class VerifiedInstituteItemWidget extends StatelessWidget {
  VerifiedInstituteItemWidget(
    this.verifiedInstituteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VerifiedInstituteItemModel verifiedInstituteItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: const EdgeInsets.all(0),
                color: appTheme.whiteA700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Container(
                  height: 146,
                  width: 190,
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: R.imgRectangle19959,
                        height: 146,
                        width: 190,
                        radius: BorderRadius.circular(
                          16,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: R.imgFrame,
                                height: 24,
                                width: 24,
                                alignment: Alignment.centerRight,
                              ),
                              const SizedBox(
                                height: 64,
                              ),
                              SizedBox(
                                width: 73,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: context.l10n.lbl_50_off,
                                        style: CustomTextStyles
                                            .titleMediumffffffff,
                                      ),
                                      TextSpan(
                                        text: context.l10n.lbl_upto_2000,
                                        style:
                                            CustomTextStyles.titleSmallffcbcacb,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff164B76),
                  gradient: const RadialGradient(
                    center: Alignment(0.5, 0.5),
                    radius: 0.5,
                    colors: [
                      Color(0xff164B76),
                      Color(0xff3FA0F0),
                    ],
                    stops: [
                      -0.8,
                      0.8,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      verifiedInstituteItemModelObj.verified!,
                      style: theme.textTheme.labelMedium,
                    ),
                    CustomImageView(
                      imagePath: R.imgUntitledDesign4,
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
                verifiedInstituteItemModelObj.shiskaCoaching!,
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
                      left: 2,
                      top: 1,
                      bottom: 1,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.fortyFive!,
                      style: CustomTextStyles.titleSmallBlack900ExtraBold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.text!,
                      style: CustomTextStyles.titleSmallBluegray700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                      top: 1,
                      bottom: 1,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.kmsCounter!,
                      style: CustomTextStyles.titleSmallBlack900ExtraBold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.text1!,
                      style: CustomTextStyles.titleSmallBluegray700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.kalkaji!,
                      style: CustomTextStyles.titleSmallBlack900ExtraBold,
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
                    verifiedInstituteItemModelObj.academics!,
                    style: CustomTextStyles.titleSmallBluegray700,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.text2!,
                      style: CustomTextStyles.titleSmallBluegray700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.com!,
                      style: CustomTextStyles.titleSmallBluegray700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.text3!,
                      style: CustomTextStyles.titleSmallBluegray700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                    ),
                    child: Text(
                      verifiedInstituteItemModelObj.sci!,
                      style: CustomTextStyles.titleSmallBluegray700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
