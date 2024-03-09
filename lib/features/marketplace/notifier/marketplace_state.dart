part of 'marketplace_notifier.dart';

/// Represents the state of Marketplace in the application.
class MarketPlaceState extends Equatable {
  MarketPlaceState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.marketplaceModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  MarketplaceModel? marketplaceModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        marketplaceModelObj,
      ];

  MarketPlaceState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    MarketplaceModel? marketplaceModelObj,
  }) {
    return MarketPlaceState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      marketplaceModelObj: marketplaceModelObj ?? this.marketplaceModelObj,
    );
  }
}
