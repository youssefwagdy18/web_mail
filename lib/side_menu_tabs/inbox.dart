import 'package:flutter/material.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/responsive_size.dart';
import 'package:web_ui_task/widgets/email_widget.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  List<String> selectList =['1','2','3','4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
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
            Padding(
              padding: EdgeInsets.only(
                  top:  ResponsiveSize.adjustHeight(0.01, context),
                  bottom: ResponsiveSize.adjustHeight(0.01, context),
                  left: ResponsiveSize.adjustWidth(0.025, context)),
              child: Row(
                children: [
                  SizedBox(
                    width: ResponsiveSize.adjustWidth(0.315, context),
                    height: ResponsiveSize.adjustHeight(0.05, context),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xffefbaba),
                          radius: ResponsiveSize.adjustWidth(0.012, context),
                          child: Text(
                            "S",
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
                          'SIXT rent a car',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveSize.adjustTextSize(8, context),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: ResponsiveSize.adjustHeight(0.025, context),
                          width: ResponsiveSize.adjustWidth(0.015, context),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  ResponsiveSize.adjustWidth(0.003, context)),
                              border: Border.all(
                                  width:
                                      ResponsiveSize.adjustWidth(0.001, context),
                                  color: AppColors.blackColor)),
                          child: Center(
                              child: Text(
                            "Ad",
                            style: TextStyle(
                                fontSize:
                                    ResponsiveSize.adjustTextSize(6, context)),
                          )),
                        ),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.005, context),
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: ResponsiveSize.adjustWidth(0.02, context),
                        ),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.04, context),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'SIXT rent a car',
                      style: TextStyle(
                        color: AppColors.petrolColor,
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveSize.adjustTextSize(8, context),
                      ),
                    ),
                  ),
                  const Expanded(flex: 2, child: Text(""))
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
                  left: ResponsiveSize.adjustWidth(0.025, context)),
              child: Row(
                children: [
                  SizedBox(
                    width: ResponsiveSize.adjustWidth(0.315, context),
                    height: ResponsiveSize.adjustHeight(0.05, context),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xfff9deb0),
                          radius: ResponsiveSize.adjustWidth(0.012, context),
                          child: Text(
                            "P",
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
                          'postmaster@outlook.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveSize.adjustTextSize(8, context),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: ResponsiveSize.adjustHeight(0.025, context),
                          width: ResponsiveSize.adjustWidth(0.015, context),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                ResponsiveSize.adjustWidth(0.01, context),
                              ),
                              border: Border.all(
                                  width:
                                      ResponsiveSize.adjustWidth(0.001, context),
                                  color: AppColors.blackColor)),
                          child: Center(
                            child: Icon(Icons.arrow_back,size: ResponsiveSize.adjustTextSize(8, context),)
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.005, context),
                        ),
                        Icon(
                          Icons.attach_file,
                          size: ResponsiveSize.adjustWidth(0.02, context),
                        ),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.04, context),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Undeliverable...',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: ResponsiveSize.adjustTextSize(8, context),
                      ),
                    ),
                  ),
                  SizedBox(width: ResponsiveSize.adjustWidth(0.02, context),),
                  Expanded(flex: 2, child: Text("9:44 AM",style: TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context)),))
                ],
              ),
            ),
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
            Padding(
              padding: EdgeInsets.only(
                  top:  ResponsiveSize.adjustHeight(0.01, context),
                  bottom: ResponsiveSize.adjustHeight(0.01, context),
                  left: ResponsiveSize.adjustWidth(0.025, context)),
              child: Row(
                children: [
                  SizedBox(
                    width: ResponsiveSize.adjustWidth(0.315, context),
                    height: ResponsiveSize.adjustHeight(0.05, context),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xffd897a1),
                          radius: ResponsiveSize.adjustWidth(0.012, context),
                          child: Text(
                            "BM",
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
                          'Bishoy Magdy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveSize.adjustTextSize(8, context),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: ResponsiveSize.adjustHeight(0.025, context),
                          width: ResponsiveSize.adjustWidth(0.015, context),
                          child: Center(
                              child: Icon(Icons.subdirectory_arrow_right,size: ResponsiveSize.adjustTextSize(8, context),)
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.005, context),
                        ),
                        Icon(
                          Icons.attach_file,
                          size: ResponsiveSize.adjustWidth(0.02, context),
                        ),
                        SizedBox(
                          width: ResponsiveSize.adjustWidth(0.04, context),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'FWD: VPN access',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: ResponsiveSize.adjustTextSize(8, context),
                      ),
                    ),
                  ),
                  SizedBox(width: ResponsiveSize.adjustWidth(0.02, context),),
                  Expanded(flex: 2, child: Text("Thu 9/5",style: TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context)),))
                ],
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
            Padding(
              padding: EdgeInsets.only(
                  top:  ResponsiveSize.adjustHeight(0.01, context),
                  bottom: ResponsiveSize.adjustHeight(0.01, context),
                  left: ResponsiveSize.adjustWidth(0.025, context)),
              child: Row(
                children: [
                  SizedBox(
                    width: ResponsiveSize.adjustWidth(0.315, context),
                    height: ResponsiveSize.adjustHeight(0.05, context),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:Color(0xff96d9d8),
                          radius: ResponsiveSize.adjustWidth(0.012, context),
                          child: Text(
                            "AA",
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
                          'aiad azer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveSize.adjustTextSize(8, context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Re: نقطة البيع ...',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: ResponsiveSize.adjustTextSize(8, context),
                      ),
                    ),
                  ),
                  SizedBox(width: ResponsiveSize.adjustWidth(0.02, context),),
                  Expanded(flex: 2, child: Text("Wed 9/4",style: TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context)),))
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
                  left: ResponsiveSize.adjustWidth(0.025, context)),
              child: Row(
                children: [
                  SizedBox(
                    width: ResponsiveSize.adjustWidth(0.315, context),
                    height: ResponsiveSize.adjustHeight(0.05, context),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:Color(0xff96d9d8),
                          radius: ResponsiveSize.adjustWidth(0.012, context),
                          child: Text(
                            "AA",
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
                          'aiad azer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveSize.adjustTextSize(8, context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Fwd: نقطة البيع ...',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: ResponsiveSize.adjustTextSize(8, context),
                      ),
                    ),
                  ),
                  SizedBox(width: ResponsiveSize.adjustWidth(0.02, context),),
                  Expanded(flex: 2, child: Text("Wed 9/4",style: TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context)),))
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
                  left: ResponsiveSize.adjustWidth(0.025, context)),
              child: Row(
                children: [
                  SizedBox(
                    width: ResponsiveSize.adjustWidth(0.315, context),
                    height: ResponsiveSize.adjustHeight(0.05, context),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xfff9deb0),
                          radius: ResponsiveSize.adjustWidth(0.012, context),
                          child: Text(
                            "BM",
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
                          'bishoy magdy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveSize.adjustTextSize(8, context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Re:VA Invoice ...',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: ResponsiveSize.adjustTextSize(8, context),
                      ),
                    ),
                  ),
                  SizedBox(width: ResponsiveSize.adjustWidth(0.02, context),),
                  Expanded(flex: 2, child: Text("Tue 9/3",style: TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context)),))
                ],
              ),
            ),
            Divider(
              color: AppColors.greyColor,
              thickness: ResponsiveSize.adjustHeight(0.001, context),
            ),
          ],
        ),
      ),
    );
  }
}
