import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello_ai_app/core/theme/app_decoration.dart';
import 'package:ostello_ai_app/l10n/l10n.dart';

import '../../../const/resource.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';
import '../model/eighteen_item_model.dart';
import '../notifier/marketplace_notifier.dart';
import 'eighteen_item_widget.dart';

class BuildCoachingCentreNearYouWidget extends StatelessWidget {
  const BuildCoachingCentreNearYouWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.msg_coaching_centre,
            style: CustomTextStyles.titleMedium18,
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: AppDecoration.outlineGray500.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: AppDecoration.fillDeepPurpleA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          context.l10n.lbl_1,
                          style: CustomTextStyles.titleSmallWhiteA700,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        context.l10n.lbl_filters,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CustomImageView(
                        imagePath: R.imgFrameBlack90001,
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(
                    left: 8,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 9,
                  ),
                  decoration: AppDecoration.outlineGray200.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: Text(
                    context.l10n.lbl_offers,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 16,
                  ),
                  child: Consumer(
                    builder: (context, ref, _) {
                      return CustomDropDown(
                        width: 105,
                        icon: CustomImageView(
                          imagePath: R.imgArrowdown,
                          height: 24,
                          width: 24,
                        ),
                        hintText: context.l10n.lbl_rating,
                        items: ref
                                .watch(marketplaceNotifier)
                                .marketplaceModelObj
                                ?.dropdownItemList ??
                            [],
                        onChanged: (value) {
                          ref.watch(marketplaceNotifier).selectedDropDownValue =
                              value;
                        },
                      );
                    },
                  ),
                ),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomDropDown(
                      width: 135,
                      icon: Container(
                        margin: const EdgeInsets.fromLTRB(
                          8,
                          8,
                          16,
                          8,
                        ),
                        child: CustomImageView(
                          imagePath: R.imgArrowdown,
                          height: 24,
                          width: 24,
                        ),
                      ),
                      hintText: context.l10n.lbl_sort_by,
                      items: ref
                              .watch(marketplaceNotifier)
                              .marketplaceModelObj
                              ?.dropdownItemList1 ??
                          [],
                      onChanged: (value) {
                        ref.watch(marketplaceNotifier).selectedDropDownValue1 =
                            value;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Consumer(
            builder: (context, ref, _) {
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return const SizedBox(
                    height: 16,
                  );
                },
                itemCount: ref
                        .watch(marketplaceNotifier)
                        .marketplaceModelObj
                        ?.eighteenItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  EighteenItemModel model = ref
                          .watch(marketplaceNotifier)
                          .marketplaceModelObj
                          ?.eighteenItemList[index] ??
                      EighteenItemModel();
                  return EighteenItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
