import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello_ai_app/features/marketplace/widgets/build_coaching_centre_near_you_widget.dart';

import 'build_popular_coaching_widget.dart';

class MarketPlaceView extends ConsumerStatefulWidget {
  const MarketPlaceView({Key? key})
      : super(
          key: key,
        );

  @override
  ConsumerState<MarketPlaceView> createState() => _MarketplaceViewState();
}

class _MarketplaceViewState extends ConsumerState<MarketPlaceView> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 32,
        ),
        Column(
          children: [
            BuildPopularCoaching(),
            SizedBox(
              height: 20,
            ),
            BuildCoachingCentreNearYouWidget()
          ],
        ),
      ],
    );
  }
}
