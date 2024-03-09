import 'package:equatable/equatable.dart';

import '../../../core/model/selection_popup_model.dart';

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
