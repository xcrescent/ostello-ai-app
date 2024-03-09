import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello_ai_app/features/marketplace/view/market_place_page.dart';
import 'package:ostello_ai_app/l10n/l10n.dart';

import '../../../const/resource.dart';
import '../../../core/theme/theme_helper.dart';
import '../../marketplace/notifier/marketplace_tab_container_notifier.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';

@RoutePage(
  deferredLoading: true,
)
class NavigationPage extends ConsumerStatefulWidget {
  const NavigationPage({super.key});

  @override
  ConsumerState<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends ConsumerState<NavigationPage> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  int currentIndex = 0;
  final tabs = [
    const DefaultWidget(),
    const MarketPlacePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: tabs[currentIndex],
        bottomNavigationBar: _buildNavBarHome(context),
        floatingActionButton: Container(
          height: 60,
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                Color(0xFFC36DEA),
                Color(0xFFF1D1FF),
              ],
              center: Alignment(0.0, 0.0),
            ),
          ),
          child: FloatingActionButton(
            backgroundColor: appTheme.whiteA700,
            shape: const CircleBorder(
              side: BorderSide.none,
            ),
            onPressed: () {
              context.router.pushNamed('/counter');
            },
            child: CustomImageView(
              imagePath: R.imgAi,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildNavBarHome(BuildContext context) {
    return CustomBottomAppBar(onChanged: (int index) {
      setState(() {
        currentIndex = index;
      });
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 80,
      title: Container(
        margin: const EdgeInsets.only(
          left: 16,
          top: 8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.lbl_hi_rajbir,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Metropolis',
              ),
            ),
            Row(
              children: [
                CustomImageView(
                  imagePath: R.imgSchoolFill0Wg,
                  height: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomDropDown(
                      width: 156,
                      borderDecoration: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintText: ref
                              .watch(marketplaceTabContainerNotifier)
                              .selectedDropDownValue
                              ?.title ??
                          "CBSE Class 10",
                      items: ref
                              .watch(marketplaceTabContainerNotifier)
                              .marketplaceTabContainerModelObj
                              ?.dropdownItemList ??
                          [],
                      onChanged: (value) {
                        ref
                            .watch(marketplaceTabContainerNotifier)
                            .selectedDropDownValue = value;
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 30,
                width: 112,
                padding: const EdgeInsets.all(4),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: appTheme.deepPurpleA400,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  border: Border.all(
                    color: appTheme.deepPurpleA400,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: R.coins,
                      height: 16,
                      width: 16,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "3500",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Metropolis',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 80,
                ),
                height: 40,
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: CustomImageView(
                  imagePath: R.imgImg,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
