// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

import '../../../core/model/selection_popup_model.dart';

/// This class defines the variables used in the [marketplace_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MarketplaceTabContainerModel extends Equatable {
  MarketplaceTabContainerModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  MarketplaceTabContainerModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return MarketplaceTabContainerModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
