import 'package:flutter/material.dart';

import '../custom_switch.dart';

class AppbarTrailingSwitch extends StatelessWidget {
  AppbarTrailingSwitch({
    Key? key,
    required this.value,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  bool value;

  Function(bool?) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSwitch(
        value: value,
        onChange: (value) {
          onTap(value);
        },
      ),
    );
  }
}
