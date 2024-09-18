import 'package:flutter/material.dart';
import 'package:web_ui_task/widgets/email_widget.dart';

import '../../utils/app_colors.dart';
import '../../utils/responsive_size.dart';

class ShowInboxBody extends StatelessWidget {
  const ShowInboxBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: ResponsiveSize.adjustWidth(0.05, context),
                right: ResponsiveSize.adjustWidth(0.01, context),
                top: ResponsiveSize.adjustHeight(0.02, context),
                bottom: ResponsiveSize.adjustHeight(0.02, context)),
            child: Row(
              children: [
                Text(
                  'Inbox',
                  style: TextStyle(
                      fontSize: ResponsiveSize.adjustTextSize(8, context),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: ResponsiveSize.adjustWidth(0.005, context),
                ),
                Icon(
                  Icons.star_border,
                  size: ResponsiveSize.adjustTextSize(12, context),
                ),
                const Spacer(),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon:  Icon(Icons.file_copy_outlined,
                        size: ResponsiveSize.adjustTextSize(12, context)),

                    items: ["1","2","3"].map((e)=>DropdownMenuItem(child: Text(e),value: e,)).toList(),
                    onChanged: (value){

                    },
                    hint: Text(
                      'Select',
                      style: TextStyle(
                          fontSize: ResponsiveSize.adjustTextSize(8, context)),
                    ),
                  ),
                ),
                SizedBox(
                  width: ResponsiveSize.adjustWidth(0.02, context),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon:  Icon(Icons.filter_list,
                        size: ResponsiveSize.adjustTextSize(12, context)),

                    items: ["1","2","3"].map((e)=>DropdownMenuItem(child: Text(e),value: e,)).toList(),
                    onChanged: (value){

                    },
                    hint: Text(
                      'Filter',
                      style: TextStyle(
                          fontSize: ResponsiveSize.adjustTextSize(8, context)),
                    ),
                  ),
                ),
                SizedBox(
                  width: ResponsiveSize.adjustWidth(0.005, context),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.greyColor,
            thickness: ResponsiveSize.adjustHeight(0.001, context),
          ),
          Padding(
            padding: EdgeInsets.only(
                top:  ResponsiveSize.adjustHeight(0.01, context),
                bottom: ResponsiveSize.adjustHeight(0.01, context),
                left: ResponsiveSize.adjustWidth(0.05, context)),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const Expanded(flex: 3, child: Text("From")),
                  VerticalDivider(
                    thickness: ResponsiveSize.adjustWidth(0.001, context),
                    color: AppColors.greyColor,
                  ),
                  const Expanded(flex: 1, child: Text("Subject")),
                  VerticalDivider(
                    thickness: ResponsiveSize.adjustWidth(0.001, context),
                    color: AppColors.greyColor,
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          const Text("Received"),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: ResponsiveSize.adjustWidth(0.01, context),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          Divider(
            color: AppColors.greyColor,
            thickness: ResponsiveSize.adjustHeight(0.001, context),
          ),
          EmailWidget(textInsideCircle: "PN", emailSenderName: "Peter Nasr",
            subjectText: "subject", receivedDate: "Wed 9/4",
            onReadTab: (){},onAttachFileTab: (){},onUnReadTab: (){},
            circleAvatarColor: AppColors.lightPetrolColor,),
          EmailWidget(textInsideCircle: "PN", emailSenderName: "Peter Nasr",
            subjectText: "subject", receivedDate: "Wed 9/4",
            onReadTab: (){},onAttachFileTab: (){},onUnReadTab: (){},
            circleAvatarColor: AppColors.lightPetrolColor,),
          Container(
            padding: EdgeInsets.only(left: ResponsiveSize.adjustWidth(0.025, context)),
            color: AppColors.primaryGreyColor,
            width: double.infinity,
            height: ResponsiveSize.adjustHeight(0.07, context),
            child: Row(children: [
              Icon(Icons.keyboard_arrow_down,size: ResponsiveSize.adjustTextSize(12, context),),
              SizedBox(width: ResponsiveSize.adjustWidth(0.01, context),),
              Text('This Month',style: TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context),fontWeight: FontWeight.bold),)
            ],),
          ),
          EmailWidget(textInsideCircle: "PN", emailSenderName: "Peter Nasr",
            subjectText: "subject", receivedDate: "Wed 9/4",
            onReadTab: (){},onAttachFileTab: (){},onUnReadTab: (){},
            circleAvatarColor: AppColors.lightPetrolColor,),
          EmailWidget(textInsideCircle: "PN", emailSenderName: "Peter Nasr",
            subjectText: "subject", receivedDate: "Wed 9/4",
            onReadTab: (){},onAttachFileTab: (){},onUnReadTab: (){},
            circleAvatarColor: AppColors.lightPetrolColor,),
          EmailWidget(textInsideCircle: "PN", emailSenderName: "Peter Nasr",
            subjectText: "subject", receivedDate: "Wed 9/4",
            onReadTab: (){},onAttachFileTab: (){},onUnReadTab: (){},
            circleAvatarColor: AppColors.lightPetrolColor,),
          EmailWidget(textInsideCircle: "PN", emailSenderName: "Peter Nasr",
            subjectText: "subject", receivedDate: "Wed 9/4",
            onReadTab: (){},onAttachFileTab: (){},onUnReadTab: (){},
            circleAvatarColor: AppColors.lightPetrolColor,),
          EmailWidget(textInsideCircle: "PN", emailSenderName: "Peter Nasr",
            subjectText: "subject", receivedDate: "Wed 9/4",
            onReadTab: (){},onAttachFileTab: (){},onUnReadTab: (){},
            circleAvatarColor: AppColors.lightPetrolColor,),
        ],
      ),
    );
  }
}
