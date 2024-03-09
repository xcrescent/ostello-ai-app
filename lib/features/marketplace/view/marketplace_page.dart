import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../const/resource.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_title_dropdown.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/appbar_trailing_switch.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';
import '../notifier/marketplace_tab_container_notifier.dart';
import '../widgets/marketplace_view.dart';

class MarketPlacePage extends ConsumerStatefulWidget {
  const MarketPlacePage({Key? key})
      : super(
          key: key,
        );

  @override
  MarketplaceTabContainerPageState createState() =>
      MarketplaceTabContainerPageState();
}

class MarketplaceTabContainerPageState extends ConsumerState<MarketPlacePage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrame(context),
                const SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Consumer(
                    builder: (context, ref, _) {
                      return CustomSearchView(
                        controller: ref
                            .watch(marketplaceTabContainerNotifier)
                            .searchController,
                        hintText: "msg_search_for_coachings",
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildFortySeven(context),
                const SizedBox(
                  height: 33,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: Text(
                      "msg_entrance_exams_2024_2025",
                      style: CustomTextStyles.titleMediumBlack9000118,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                _buildTabview(context),
                SizedBox(
                  height: 1281,
                  child: TabBarView(
                    controller: tabviewController,
                    children: const [
                      MarketPlaceView(),
                      MarketPlaceView(),
                      MarketPlaceView(),
                      MarketPlaceView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64,
      title: Container(
        height: 42.63,
        width: 136,
        margin: const EdgeInsets.only(
          left: 16,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AppbarTitle(
              text: "lbl_hi_rajbir",
              margin: const EdgeInsets.only(
                right: 68,
                bottom: 20,
              ),
            ),
            AppbarTitleImage(
              imagePath: R.imgSchoolFill0Wg,
              margin: const EdgeInsets.only(
                top: 22,
                right: 116,
              ),
            ),
            Consumer(
              builder: (context, ref, _) {
                return AppbarTitleDropdown(
                  margin: const EdgeInsets.only(
                    left: 25,
                    top: 21,
                  ),
                  hintText: "lbl_cbse_class_10",
                  items: ref
                          .watch(marketplaceTabContainerNotifier)
                          .marketplaceTabContainerModelObj
                          ?.dropdownItemList ??
                      [],
                  onTap: (value) {
                    ref
                        .watch(marketplaceTabContainerNotifier)
                        .selectedDropDownValue = value;
                  },
                );
              },
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 32,
          width: 89,
          margin: const EdgeInsets.all(
            16,
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Consumer(
                builder: (context, ref, _) {
                  return AppbarTrailingSwitch(
                    value: ref
                            .watch(marketplaceTabContainerNotifier)
                            .isSelectedSwitch ??
                        false,
                    onTap: (value) {
                      ref
                          .read(marketplaceTabContainerNotifier.notifier)
                          .changeSwitchBox1(value!);
                    },
                  );
                },
              ),
              AppbarSubtitle(
                text: "lbl_3500",
                margin: const EdgeInsets.fromLTRB(
                  22,
                  7,
                  41,
                  7,
                ),
              ),
              AppBarTrailingCircleImage(
                imagePath: R.imgImg,
                margin: const EdgeInsets.only(
                  left: 57,
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 7,
      ),
      decoration: AppDecoration.fillDeepPurpleA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: R.imgSearch,
            height: 20,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 2,
            ),
            child: Text(
              "msg_gandhinagar_ahmedabad",
              style: CustomTextStyles.titleSmallWhiteA700_1,
            ),
          ),
          const Spacer(),
          CustomImageView(
            imagePath: R.imgIconEditThin,
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
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

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 75,
      width: 312,
      margin: const EdgeInsets.only(
        left: 16,
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 4,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: R.imgImage109,
                    height: 40,
                    width: 35,
                    margin: const EdgeInsets.only(
                      top: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_jee",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 4,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: R.imgImageRemovebgPreview,
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(
                      top: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_clat",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 11,
                vertical: 4,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: R.imgFrame1410102271,
                    height: 40,
                    width: 41,
                    margin: const EdgeInsets.only(
                      top: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_ca",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 9,
                vertical: 4,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: R.imgImage114,
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(
                      top: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_bitsat",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUpsc(
    BuildContext context, {
    required String image,
    required String bITSAT,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 4,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 1,
          ),
          CustomImageView(
            imagePath: image,
            height: 40,
            width: 40,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            bITSAT,
            style: CustomTextStyles.titleSmallBlack90001.copyWith(
              color: appTheme.black90001.withOpacity(0.68),
            ),
          ),
        ],
      ),
    );
  }
}
