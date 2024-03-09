// ignore_for_file: must_be_immutable

part of 'marketplace_notifier.dart';

/// Represents the state of Marketplace in the application.
class MarketplaceState extends Equatable {
  MarketplaceState({
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

  MarketplaceState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    MarketplaceModel? marketplaceModelObj,
  }) {
    return MarketplaceState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      marketplaceModelObj: marketplaceModelObj ?? this.marketplaceModelObj,
    );
  }
}
