import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello_ai_app/core/theme/app_decoration.dart';
import 'package:ostello_ai_app/features/marketplace/widgets/verified_institute_item_widget.dart';

import '../../../const/resource.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';
import '../model/eighteen_item_model.dart';
import '../model/verified_institute_item_model.dart';
import '../notifier/marketplace_notifier.dart';
import 'eighteen_item_widget.dart';

class MarketPlaceView extends ConsumerStatefulWidget {
  const MarketPlaceView({Key? key})
      : super(
          key: key,
        );

  @override
  ConsumerState<MarketPlaceView> createState() => _MarketplaceViewState();
}

class _MarketplaceViewState extends ConsumerState<MarketPlaceView>
    with AutomaticKeepAliveClientMixin<MarketPlaceView> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    _buildVerifiedInsitutue(context),
                    const SizedBox(
                      height: 32,
                    ),
                    _buildFrame(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVerifiedInsitutue(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              "msg_popular_coaching",
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 263,
              child: Consumer(
                builder: (context, ref, _) {
                  return ListView.separated(
                    padding: const EdgeInsets.only(
                      left: 24,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemCount: ref
                            .watch(marketplaceNotifier)
                            .marketplaceModelObj
                            ?.verifiedinstituteItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      VerifiedInstituteItemModel model = ref
                              .watch(marketplaceNotifier)
                              .marketplaceModelObj
                              ?.verifiedinstituteItemList[index] ??
                          VerifiedInstituteItemModel();
                      return VerifiedInstituteItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 4,
              width: 100,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  2,
                ),
                child: LinearProgressIndicator(
                  value: 0.32,
                  backgroundColor: appTheme.whiteA700,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    appTheme.deepPurpleA400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 796,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(
                right: 12,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                    ),
                    child: Text(
                      "msg_coaching_centre",
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                  const SizedBox(
                    height: 73,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                    ),
                    child: Consumer(
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
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 43,
                bottom: 712,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 136,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 7,
                    ),
                    decoration: AppDecoration.outlineGray500.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 25,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: AppDecoration.fillDeepPurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_1",
                            style: CustomTextStyles.titleSmallWhiteA700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_filters",
                            style: CustomTextStyles.titleSmallBlack900,
                          ),
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
                    width: 72,
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
                      "lbl_offers",
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Consumer(
                      builder: (context, ref, _) {
                        return CustomDropDown(
                          width: 105,
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
                          hintText: "lbl_rating",
                          items: ref
                                  .watch(marketplaceNotifier)
                                  .marketplaceModelObj
                                  ?.dropdownItemList ??
                              [],
                          onChanged: (value) {
                            ref
                                .watch(marketplaceNotifier)
                                .selectedDropDownValue = value;
                          },
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Consumer(
                    builder: (context, ref, _) {
                      return CustomDropDown(
                        width: 110,
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
                        hintText: "lbl_sort_by",
                        items: ref
                                .watch(marketplaceNotifier)
                                .marketplaceModelObj
                                ?.dropdownItemList1 ??
                            [],
                        onChanged: (value) {
                          ref
                              .watch(marketplaceNotifier)
                              .selectedDropDownValue1 = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
