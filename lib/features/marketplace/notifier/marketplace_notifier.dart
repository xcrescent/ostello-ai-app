import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../const/resource.dart';
import '../../../core/model/selection_popup_model.dart';
import '../model/eighteen_item_model.dart';
import '../model/market_place_model.dart';
import '../model/verified_institute_item_model.dart';

part 'marketplace_state.dart';

final marketplaceNotifier =
    StateNotifierProvider<MarketplaceNotifier, MarketPlaceState>(
  (ref) => MarketplaceNotifier(MarketPlaceState(
    selectedDropDownValue: SelectionPopupModel(title: ''),
    selectedDropDownValue1: SelectionPopupModel(title: ''),
    marketplaceModelObj: MarketplaceModel(verifiedinstituteItemList: [
      VerifiedInstituteItemModel(
          verified: "Verified",
          shiskaCoaching: "Shiska Coaching Center",
          fortyFive: "4.5",
          text: "·",
          kmsCounter: "3 kms",
          text1: "·",
          kalkaji: "Kalkaji",
          academics: "Academics",
          text2: "·",
          com: "Com",
          text3: "·",
          sci: "Sci"),
      VerifiedInstituteItemModel(
          verified: "Verified",
          shiskaCoaching: "Shiska Coaching Center",
          fortyFive: "4.5",
          text: "·",
          kmsCounter: "3 kms",
          text1: "·",
          kalkaji: "Kalkaji",
          academics: "Academics",
          text2: "·",
          com: "Com",
          text3: "·",
          sci: "Sci"),
      VerifiedInstituteItemModel(
          verified: "Verified",
          shiskaCoaching: "Shiska Coaching Center",
          fortyFive: "4.5",
          text: "·",
          kmsCounter: "3 kms",
          text1: "·",
          kalkaji: "Kalkaji",
          academics: "Academics",
          text2: "·",
          com: "Com",
          text3: "·",
          sci: "Sci"),
      VerifiedInstituteItemModel(
          verified: "Verified",
          shiskaCoaching: "Shiska Coaching Center",
          fortyFive: "4.5",
          text: "·",
          kmsCounter: "3 kms",
          text1: "·",
          kalkaji: "Kalkaji",
          academics: "Academics",
          text2: "·",
          com: "Com",
          text3: "·",
          sci: "Sci")
    ], eighteenItemList: [
      EighteenItemModel(
          offer: "Flat\n50% off ",
          verified: "Verified",
          verified1: R.imgUntitledDesign4,
          shiskaCoaching: "Shiska Coaching Center",
          fortyFive: "4.5",
          rating: "(100+ Rating)",
          academics: "All Subjects",
          text: "·",
          com: "Com",
          text1: "·",
          sci: "Sci",
          kalkaji: "Kalkaji",
          text2: "·",
          kmsCounter: "3 kms"),
      EighteenItemModel(
          offer: "Flat\n50% off ",
          verified: "Verified",
          verified1: R.imgUntitledDesign4,
          shiskaCoaching: "Shiska Coaching Center",
          fortyFive: "4.5",
          rating: "(100+ Rating)",
          academics: "All Subjects",
          text: "·",
          com: "Com",
          text1: "·",
          sci: "Sci",
          kalkaji: "Kalkaji",
          text2: "·",
          kmsCounter: "3 kms"),
      EighteenItemModel(offer: "Flat\n50% off ")
    ], dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList1: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a Marketplace according to the event that is dispatched to it.
class MarketplaceNotifier extends StateNotifier<MarketPlaceState> {
  MarketplaceNotifier(MarketPlaceState state) : super(state) {}
}
