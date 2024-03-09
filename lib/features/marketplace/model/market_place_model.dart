import 'package:equatable/equatable.dart';
import 'package:ostello_ai_app/features/marketplace/model/verified_institute_item_model.dart';

import '../../../core/model/selection_popup_model.dart';
import 'eighteen_item_model.dart';

/// This class defines the variables used in the [marketplace_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MarketplaceModel extends Equatable {
  MarketplaceModel({
    this.verifiedinstituteItemList = const [],
    this.eighteenItemList = const [],
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  }) {}

  List<VerifiedInstituteItemModel> verifiedinstituteItemList;

  List<EighteenItemModel> eighteenItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  MarketplaceModel copyWith({
    List<VerifiedInstituteItemModel>? verifiedinstituteItemList,
    List<EighteenItemModel>? eighteenItemList,
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return MarketplaceModel(
      verifiedinstituteItemList:
          verifiedinstituteItemList ?? this.verifiedinstituteItemList,
      eighteenItemList: eighteenItemList ?? this.eighteenItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [
        verifiedinstituteItemList,
        eighteenItemList,
        dropdownItemList,
        dropdownItemList1
      ];
}
