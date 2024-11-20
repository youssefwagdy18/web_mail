import 'package:flutter/material.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/responsive_size.dart';
import 'package:web_ui_task/widgets/email_widget.dart';

class EmailDetailsScreen extends StatelessWidget {
  static const String routeName = 'Email details screen';
  const EmailDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as EmailWidget;
    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top: ResponsiveSize.adjustHeight(0.01, context),
      bottom:ResponsiveSize.adjustHeight(0.01, context),right: ResponsiveSize.adjustWidth(0.01, context),
      left: ResponsiveSize.adjustWidth(0.01, context)),
      child: Text(args.emailSenderName,
      style: TextStyle(color: AppColors.blackColor,fontSize: ResponsiveSize.adjustTextSize(10, context)),),),
    );
  }
}
