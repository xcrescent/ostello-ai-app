import 'package:flutter/material.dart';

import '../../../const/resource.dart';
import '../../../core/model/selection_popup_model.dart';
import '../custom_drop_down.dart';
import '../custom_image_view.dart';

class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 111,
        icon: Container(
          margin: const EdgeInsets.only(left: 4),
          child: CustomImageView(
            imagePath: R.imgArrowdownDeepPurpleA400,
            height: 16,
            width: 16,
          ),
        ),
        hintText: "lbl_cbse_class_10",
        items: items,
        onChanged: (SelectionPopupModel? value) {
          onTap(value!);
        },
      ),
    );
  }
}
