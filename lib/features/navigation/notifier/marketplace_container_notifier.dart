import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/navigation_model.dart';

part 'marketplace_container_state.dart';

final marketplaceContainerNotifier = StateNotifierProvider<
        MarketplaceContainerNotifier, MarketplaceContainerState>(
    (ref) => MarketplaceContainerNotifier(MarketplaceContainerState(
        marketplaceContainerModelObj: MarketplaceContainerModel())));

/// A notifier that manages the state of a MarketplaceContainer according to the event that is dispatched to it.
class MarketplaceContainerNotifier
    extends StateNotifier<MarketplaceContainerState> {
  MarketplaceContainerNotifier(MarketplaceContainerState state) : super(state);
}
