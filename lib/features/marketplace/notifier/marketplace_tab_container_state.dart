part of 'marketplace_tab_container_notifier.dart';

/// Represents the state of MarketplaceTabContainer in the application.
class MarketplaceTabContainerState extends Equatable {
  MarketplaceTabContainerState({
    this.searchController,
    this.selectedDropDownValue,
    this.isSelectedSwitch = false,
    this.marketplaceTabContainerModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  MarketplaceTabContainerModel? marketplaceTabContainerModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        isSelectedSwitch,
        marketplaceTabContainerModelObj,
      ];

  MarketplaceTabContainerState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    bool? isSelectedSwitch,
    MarketplaceTabContainerModel? marketplaceTabContainerModelObj,
  }) {
    return MarketplaceTabContainerState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      marketplaceTabContainerModelObj: marketplaceTabContainerModelObj ??
          this.marketplaceTabContainerModelObj,
    );
  }
}
