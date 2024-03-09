import 'package:flutter/material.dart';

import '../../../const/resource.dart';
import '../custom_image_view.dart';
import '../custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 288,
        controller: controller,
        hintText: "msg_indian_coaching",
        suffix: Container(
          margin: const EdgeInsets.fromLTRB(30, 12, 16, 12),
          child: CustomImageView(
            imagePath: R.imgMicfill0wght300grad0opsz241,
            height: 24,
            width: 24,
          ),
        ),
        suffixConstraints: const BoxConstraints(
          maxHeight: 48,
        ),
      ),
    );
  }
}
