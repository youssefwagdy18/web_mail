import 'package:flutter/material.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/responsive_size.dart';

class SendingEmail extends StatelessWidget {
  const SendingEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreyColor,
      body: Column(children: [
        Padding(
          padding:  EdgeInsets.only(left: ResponsiveSize.adjustWidth(0.01, context),
          right: ResponsiveSize.adjustWidth(0.01, context),top: ResponsiveSize.adjustHeight(0.01, context),
          bottom: ResponsiveSize.adjustHeight(0.01, context)),
          child: Container(
            height: ResponsiveSize.adjustHeight(0.08, context),
            width: double.infinity,
            color: AppColors.whiteColor,
          ),
        )
      ],),
    );
  }
}
