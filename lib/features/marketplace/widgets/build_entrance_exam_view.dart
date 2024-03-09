import 'package:flutter/material.dart';
import 'package:ostello_ai_app/l10n/l10n.dart';

import '../../../const/resource.dart';
import 'build_entrance_exam_option_widget.dart';

class BuildEntranceExamView extends StatelessWidget {
  const BuildEntranceExamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width - 32,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        children: [
          BuildEntranceExamOption(
            image: R.imgImage109,
            name: context.l10n.lbl_jee,
          ),
          const SizedBox(
            width: 20,
          ),
          BuildEntranceExamOption(
            image: R.imgImageRemovebgPreview,
            name: context.l10n.lbl_clat,
          ),
          const SizedBox(
            width: 20,
          ),
          BuildEntranceExamOption(
            image: R.imgFrame1410102271,
            name: context.l10n.lbl_ca,
          ),
          const SizedBox(
            width: 20,
          ),
          BuildEntranceExamOption(
            image: R.imgImage114,
            name: context.l10n.lbl_bitsat,
          ),
        ],
      ),
    );
  }
}
