import 'package:flutter/cupertino.dart';
import 'package:ostello_ai_app/l10n/l10n.dart';

import '../../../const/resource.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../widgets/custom_image_view.dart';

class BuildLocationFrame extends StatelessWidget {
  const BuildLocationFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      decoration: AppDecoration.fillDeepPurpleA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: R.imgSearch,
            height: 20,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Text(
              context.l10n.msg_gandhinagar_ahmedabad,
              style: CustomTextStyles.titleSmallWhiteA700_1,
            ),
          ),
          const Spacer(),
          CustomImageView(
            imagePath: R.imgIconEditThin,
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}
