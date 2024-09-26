import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_ui_task/config/index_provider.dart';
import 'package:web_ui_task/utils/app_colors.dart';

import '../../utils/responsive_size.dart';

class MainTabBar extends StatelessWidget {
  const MainTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<IndexProvider>(context);
    return SizedBox(
        height: ResponsiveSize.adjustHeight(0.075, context),
        width: ResponsiveSize.adjustWidth(0.82, context),
        child: Row(
          children: [
            TextButton(
                onPressed: provider.selectedTabs.isEmpty ? null :()=> clickableFunction,
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      size: ResponsiveSize.adjustTextSize(10, context),
                      color: provider.selectedTabs.isEmpty?AppColors.greyColor:AppColors.darkGreyColor,
                    ),
                    Text(
                      'Delete',
                      style: TextStyle(
                          color: provider.selectedTabs.isEmpty?AppColors.greyColor:AppColors.darkGreyColor,
                          fontSize: ResponsiveSize.adjustTextSize(9, context)),
                    ),
                  ],
                )),
            TextButton(
                onPressed: provider.selectedTabs.isEmpty ? null :()=> clickableFunction,
                child: Row(
                  children: [
                    Icon(
                      Icons.archive,
                      size: ResponsiveSize.adjustTextSize(10, context),
                      color: provider.selectedTabs.isEmpty?AppColors.lightGreenColor:AppColors.darkGreenColor,
                    ),
                    Text(
                      'Archive',
                      style: TextStyle(
                          color: provider.selectedTabs.isEmpty?AppColors.greyColor:AppColors.darkGreyColor,
                          fontSize: ResponsiveSize.adjustTextSize(9, context)),
                    ),
                  ],
                )),
            TextButton(
                onPressed: provider.selectedTabs.isEmpty ? null :()=> clickableFunction,
                child: Row(
                  children: [
                    Icon(
                      Icons.report_gmailerrorred,
                      size: ResponsiveSize.adjustTextSize(10, context),
                      color: provider.selectedTabs.isEmpty?AppColors.lightRedColor:AppColors.redColor ,
                    ),
                    Text(
                      'Report',
                      style: TextStyle(
                          color: provider.selectedTabs.isEmpty?AppColors.greyColor:AppColors.darkGreyColor,
                          fontSize: ResponsiveSize.adjustTextSize(9, context)),
                    ),
                  ],
                )),
            TextButton(
                onPressed: provider.selectedTabs.isEmpty ? null :()=> clickableFunction,
                child: Row(
                  children: [
                    Icon(
                      Icons.drive_file_move_outline,
                      size: ResponsiveSize.adjustTextSize(10, context),
                      color: provider.selectedTabs.isEmpty?AppColors.lightPetrolColor:AppColors.petrolColor,
                    ),
                    Text(
                      'Move to',
                      style: TextStyle(
                          color:  provider.selectedTabs.isEmpty?AppColors.greyColor:AppColors.darkGreyColor,
                          fontSize: ResponsiveSize.adjustTextSize(9, context)),
                    ),
                  ],
                )),
          ],
        ));
  }
  clickableFunction(){

  }
}
