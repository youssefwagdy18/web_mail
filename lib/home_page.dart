import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:provider/provider.dart';
import 'package:web_ui_task/config/index_provider.dart';
import 'package:web_ui_task/controllers/side_controllers.dart';
import 'package:web_ui_task/sending_email.dart';
import 'package:web_ui_task/tool_bar_tabs/home_tab.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/navigation_bar.dart';
import 'package:web_ui_task/utils/responsive_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<IndexProvider>(context);
    return Scaffold(
      backgroundColor: AppColors.primaryGreyColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: double.infinity,
          color: AppColors.lightGreyColor,
          child: Row(
            children: [
              // FaIcon(FontAwesomeIcons.addressBook)
              Container(
                color: AppColors.petrolColor,
                width: ResponsiveSize.adjustWidth(0.08, context),
                height: double.infinity,
                child: Center(
                  child: Text(
                    'Outlook',
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: ResponsiveSize.adjustTextSize(12, context)),
                  ),
                ),
              ),
              Container(
                color: AppColors.lightBejColor,
                width: ResponsiveSize.adjustWidth(0.09, context),
                height: double.infinity,
              ),
              SizedBox(
                width: ResponsiveSize.adjustWidth(0.05, context),
                height: double.infinity,
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        color: AppColors.lightOrangeColor,
                        width: ResponsiveSize.adjustWidth(0.33, context),
                        height: double.infinity,
                      ),
                      Container(
                        color: AppColors.orangeColor,
                        width: ResponsiveSize.adjustWidth(0.2, context),
                        height: double.infinity,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: ResponsiveSize.adjustWidth(0.01, context)),
                    child: SizedBox(
                      height: ResponsiveSize.adjustHeight(0.045, context),
                      width: ResponsiveSize.adjustWidth(0.25, context),
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            prefixIconColor: Colors.grey,
                            prefixIcon: const Icon(Icons.search),
                            contentPadding: EdgeInsets.only(
                                left: ResponsiveSize.adjustWidth(0.01, context),
                                right:
                                    ResponsiveSize.adjustWidth(0.01, context),
                                top: ResponsiveSize.adjustHeight(0.01, context),
                                bottom:
                                    ResponsiveSize.adjustHeight(0.01, context)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                  ResponsiveSize.adjustHeight(0.01, context),
                                )),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(
                                  ResponsiveSize.adjustHeight(0.01, context)),
                            ),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                  ResponsiveSize.adjustHeight(0.01, context),
                                )),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Search',
                            hintStyle: const TextStyle(color: Colors.grey)),
                        controller: searchController,
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: double.infinity,
                    color: AppColors.petrolColor,
                    width: ResponsiveSize.adjustWidth(0.18, context),
                  ),
                  Container(
                    height: double.infinity,
                    color: AppColors.lightGreenColor,
                    width: ResponsiveSize.adjustWidth(0.05, context),
                  ),
                  Container(
                    height: double.infinity,
                    color: AppColors.darkGreenColor,
                    width: ResponsiveSize.adjustWidth(0.1, context),
                  ),
                  Container(
                    height: double.infinity,
                    color: AppColors.darkPetrolColor,
                    width: ResponsiveSize.adjustWidth(0.05, context),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: ResponsiveSize.adjustHeight(0.01, context),
        ),
        Container(
          color: AppColors.primaryGreyColor,
          width: ResponsiveSize.adjustWidth(0.01, context),
          height: ResponsiveSize.adjustHeight(0.03, context),
          child: HomeTab(),
        ),
        SizedBox(
          width: double.infinity,
          height: ResponsiveSize.adjustHeight(0.01, context),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: ResponsiveSize.adjustWidth(0.02, context),
              right: ResponsiveSize.adjustWidth(0.02, context)),
          child: Material(
            elevation: ResponsiveSize.adjustHeight(0.005, context),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                  ),
                  width: double.infinity,
                  height: ResponsiveSize.adjustHeight(0.06, context),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ResponsiveSize.adjustWidth(0.003, context),
                      ),
                      SizedBox(
                        width: ResponsiveSize.adjustWidth(0.11, context),
                        height: ResponsiveSize.adjustHeight(0.05, context),
                        child: ElevatedButton(
                          onPressed: () {
                           provider.changeIndex(1);
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(
                                  left: ResponsiveSize.adjustWidth(
                                      0.008, context),
                                  right: ResponsiveSize.adjustWidth(
                                      0.008, context)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          ResponsiveSize.adjustHeight(
                                              0.01, context)),
                                      bottomLeft: Radius.circular(
                                          ResponsiveSize.adjustHeight(
                                              0.01, context)))),
                              backgroundColor: AppColors.darkPetrolColor),
                          child: Row(
                            children: [
                              FaIcon(
                                Icons.email_outlined,
                                color: AppColors.whiteColor,
                                size:
                                    ResponsiveSize.adjustTextSize(15, context),
                              ),
                              SizedBox(
                                width:
                                    ResponsiveSize.adjustWidth(0.01, context),
                              ),
                              Text(
                                'New Email',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize:
                                      ResponsiveSize.adjustTextSize(8, context),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ResponsiveSize.adjustWidth(0.0015, context),
                      ),
                      SizedBox(
                        width: ResponsiveSize.adjustWidth(0.025, context),
                        height: ResponsiveSize.adjustHeight(0.05, context),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                          ResponsiveSize.adjustHeight(
                                              0.01, context)),
                                      bottomRight: Radius.circular(
                                          ResponsiveSize.adjustHeight(
                                              0.01, context)))),
                              backgroundColor: AppColors.darkPetrolColor),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.whiteColor,
                            size: ResponsiveSize.adjustTextSize(10, context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: ResponsiveSize.adjustHeight(0.04, context),
                  width: ResponsiveSize.adjustWidth(0.815, context),
                  decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(
                          ResponsiveSize.adjustWidth(0.1, context))),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: ResponsiveSize.adjustHeight(0.05, context),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    flex: 6,
                    child: NavBar(),
                  ),
                  SizedBox(
                    width: ResponsiveSize.adjustWidth(0.01, context),
                  ),
                  const Expanded(child: SideControllers())
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
