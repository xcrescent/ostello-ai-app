import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/model/selection_popup_model.dart';
import '../model/market_place_page_model.dart';

part 'marketplace_tab_container_state.dart';

final marketplaceTabContainerNotifier = StateNotifierProvider<
    MarketplaceTabContainerNotifier, MarketplaceTabContainerState>(
  (ref) => MarketplaceTabContainerNotifier(MarketplaceTabContainerState(
    searchController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    isSelectedSwitch: false,
    marketplaceTabContainerModelObj:
        MarketplaceTabContainerModel(dropdownItemList: [
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

/// A notifier that manages the state of a MarketplaceTabContainer according to the event that is dispatched to it.
class MarketplaceTabContainerNotifier
    extends StateNotifier<MarketplaceTabContainerState> {
  MarketplaceTabContainerNotifier(MarketplaceTabContainerState state)
      : super(state) {}

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}
