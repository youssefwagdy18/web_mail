import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_ui_task/config/index_provider.dart';
import 'package:web_ui_task/widgets/email_details_screen.dart';

import '../utils/app_colors.dart';
import '../utils/responsive_size.dart';

class EmailWidget extends StatefulWidget{
  String textInsideCircle ='';
  int? index;
  String emailSenderName ='';
  String subjectText ='';
  String receivedDate ='';
  Function onUnReadTab;
  Function onReadTab;
  Function onAttachFileTab;
  Color circleAvatarColor;
  EmailWidget({super.key,required this.textInsideCircle,required this.emailSenderName,required this.subjectText,
    required this.index,
  required this.receivedDate,required this.onReadTab,required this.onUnReadTab,required this.onAttachFileTab,required this.circleAvatarColor});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<IndexProvider>(context);
    return  Column(
      children: [
        Container(
          color: !provider.selectedTabs.contains(widget.index)?AppColors.whiteColor:AppColors.greyColor,
          child: Padding(
            padding: EdgeInsets.only(
                top:  ResponsiveSize.adjustHeight(0.01, context),
                bottom: ResponsiveSize.adjustHeight(0.01, context),
                left: ResponsiveSize.adjustWidth(0.025, context)),
            child: Row(
              children: [
                SizedBox(
                  width: ResponsiveSize.adjustWidth(0.315, context),
                  height: ResponsiveSize.adjustHeight(0.05, context),
                  child: InkWell(
                    onDoubleTap:  (){
                      Navigator.push(context, MaterialPageRoute<EmailWidget>(builder: (context)=>const EmailDetailsScreen(),
                        settings: RouteSettings(arguments: EmailWidget(
                          index: widget.index,
                            textInsideCircle: widget.textInsideCircle,
                            emailSenderName: widget.emailSenderName,
                            subjectText: widget.subjectText,
                            receivedDate: widget.receivedDate,
                            onReadTab: widget.onReadTab,
                            onUnReadTab: widget.onUnReadTab,
                            onAttachFileTab: widget.onAttachFileTab,
                            circleAvatarColor: widget.circleAvatarColor),),),);
                    },
                    onTap: (){
                      provider.changeSelected(widget.index??0);
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: widget.circleAvatarColor,
                          radius: ResponsiveSize.adjustWidth(0.012, context),
                          child: Text(
                            widget.textInsideCircle,
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                ResponsiveSize.adjustTextSize(6, context)),
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.01, context),
                        ),
                        Text(
                          widget.emailSenderName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveSize.adjustTextSize(8, context),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.005, context),
                        ),
                        GestureDetector(
                            onTap: (){
                              widget.onReadTab;
                              setState(() {
                              });
                            },
                            child: Icon(Icons.mark_email_read_outlined,size:  ResponsiveSize.adjustTextSize(8, context),)),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.005, context),
                        ),
                        GestureDetector(
                          onTap: (){
                            widget.onUnReadTab;
                            setState(() {

                            });
                          },
                            child: Icon(Icons.mark_email_unread,size: ResponsiveSize.adjustTextSize(8, context),)),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.005, context),
                        ),
                        GestureDetector(
                          onTap: (){
                            widget.onAttachFileTab;
                            setState(() {

                            });
                          },
                            child: Icon(Icons.attach_file,size:  ResponsiveSize.adjustTextSize(8, context),)),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.005, context),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child:Text(widget.subjectText,style: TextStyle(
                        fontSize: ResponsiveSize.adjustTextSize(8, context),
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400
                    ),)
                ),
                SizedBox(width: ResponsiveSize.adjustWidth(0.02, context),),
                Expanded(flex: 2, child: Text(widget.receivedDate,style: TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context)),))
              ],
            ),
          ),
        ),
        Divider(
          color: AppColors.greyColor,
          thickness: ResponsiveSize.adjustHeight(0.001, context),
        ),
      ],
    );
  }
}