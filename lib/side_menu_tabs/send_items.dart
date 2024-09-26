import 'package:flutter/material.dart';
import 'package:web_ui_task/utils/app_colors.dart';
class SendItems extends StatefulWidget {
  const SendItems({super.key});

  @override
  State<SendItems> createState() => _SendItemsState();
}

class _SendItemsState extends State<SendItems> {
  final TextEditingController sendController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(backgroundColor: AppColors.whiteColor,);
  }
}
