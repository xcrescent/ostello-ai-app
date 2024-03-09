import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello_ai_app/features/marketplace/widgets/verified_institute_item_widget.dart';

import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/theme_helper.dart';
import '../model/verified_institute_item_model.dart';
import '../notifier/marketplace_notifier.dart';

class BuildPopularCoaching extends StatelessWidget {
  const BuildPopularCoaching({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController(
      initialScrollOffset: 0,
      keepScrollOffset: true,
    );
    return Container(
      height: 368,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              "Popular coaching to explore",
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 18,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ScrollbarTheme(
            data: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(
                appTheme.deepPurpleA400,
              ),

              mainAxisMargin: 100,
              minThumbLength: 16,

              // trackBorderColor: MaterialStateProperty.all(
              //   appTheme.deepPurpleA400,
              // ),

              trackColor: MaterialStateProperty.all(
                Colors.white,
              ),
              interactive: true,
              thumbVisibility: MaterialStateProperty.all(
                true,
              ),
              trackVisibility: MaterialStateProperty.all(
                true,
              ),
            ),
            child: Scrollbar(
              controller: _scrollController,
              interactive: true,
              radius: const Radius.circular(
                4,
              ),
              thickness: 4,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  height: 298,
                  child: Consumer(
                    builder: (context, ref, _) {
                      return ListView.separated(
                        padding: const EdgeInsets.only(
                          left: 24,
                        ),
                        scrollDirection: Axis.horizontal,
                        controller: _scrollController,
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
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     height: 4,
          //     width: 100,
          //     decoration: BoxDecoration(
          //       color: appTheme.whiteA700,
          //       borderRadius: BorderRadius.circular(
          //         2,
          //       ),
          //     ),
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(
          //         2,
          //       ),
          //       child: LinearProgressIndicator(
          //         value: 0.32,
          //         backgroundColor: appTheme.whiteA700,
          //         valueColor: AlwaysStoppedAnimation<Color>(
          //           appTheme.deepPurpleA400,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
