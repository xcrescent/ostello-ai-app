// ignore_for_file: must_be_immutable

part of 'marketplace_container_notifier.dart';

/// Represents the state of MarketplaceContainer in the application.
class MarketplaceContainerState extends Equatable {
  MarketplaceContainerState({this.marketplaceContainerModelObj});

  MarketplaceContainerModel? marketplaceContainerModelObj;

  @override
  List<Object?> get props => [
        marketplaceContainerModelObj,
      ];

  MarketplaceContainerState copyWith(
      {MarketplaceContainerModel? marketplaceContainerModelObj}) {
    return MarketplaceContainerState(
      marketplaceContainerModelObj:
          marketplaceContainerModelObj ?? this.marketplaceContainerModelObj,
    );
  }
}
