import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello_ai_app/l10n/l10n.dart';

import '../../../core/theme/custom_text_style.dart';
import '../../widgets/custom_search_view.dart';
import '../notifier/marketplace_tab_container_notifier.dart';
import '../widgets/build_banner_container_widget.dart';
import '../widgets/build_entrance_exam_view.dart';
import '../widgets/build_location_banner_widget.dart';
import '../widgets/market_place_view.dart';

class MarketPlacePage extends ConsumerStatefulWidget {
  const MarketPlacePage({Key? key})
      : super(
          key: key,
        );

  @override
  ConsumerState<MarketPlacePage> createState() => _MarketplacePageState();
}

class _MarketplacePageState extends ConsumerState<MarketPlacePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const BuildLocationFrame(),
              const SizedBox(
                height: 12,
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
                      hintText: context.l10n.msg_search_for_coachings,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const BuildBannerContainer(),
              const SizedBox(
                height: 33,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Text(
                  context.l10n.msg_entrance_exams_2024_2025,
                  style: CustomTextStyles.titleMediumBlack9000118,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BuildEntranceExamView(),
              const SizedBox(
                height: 24,
              ),
              const MarketPlaceView(),
            ],
          ),
        ),
      ),
    );
  }
}
