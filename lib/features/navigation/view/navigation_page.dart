import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello_ai_app/features/marketplace/view/marketplace_page.dart';

import '../../../const/resource.dart';
import '../../../core/theme/theme_helper.dart';
import '../../widgets/custom_bottom_app_bar.dart';
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
}
