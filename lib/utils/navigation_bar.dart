import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_ui_task/config/index_provider.dart';
import 'package:web_ui_task/side_menu_tabs/archive.dart';
import 'package:web_ui_task/side_menu_tabs/deleted_items.dart';
import 'package:web_ui_task/side_menu_tabs/drafts.dart';
import 'package:web_ui_task/side_menu_tabs/inbox/inbox.dart';
import 'package:web_ui_task/side_menu_tabs/junk_mails.dart';
import 'package:web_ui_task/side_menu_tabs/send_items.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/responsive_size.dart';

class NavBar extends StatefulWidget {

  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  PageController pageController = PageController();
  SideMenuController sideMenuController = SideMenuController();

  @override
  void initState() {
    sideMenuController.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<IndexProvider>(context,listen: true);
    return SizedBox(
      width: ResponsiveSize.adjustWidth(0.8, context),
      height: ResponsiveSize.adjustHeight(0.76, context),
      child: Row(
        children: [
          Visibility(
            visible: provider.visible==2?true:false,
            child: SideMenu(
                style: SideMenuStyle(
                  openSideMenuWidth: ResponsiveSize.adjustWidth(0.2, context),
                  hoverColor: const Color(0xffcfe8ed),
                  unselectedIconColor: AppColors.blackColor,
                  selectedColor: const Color(0xffcfe8ed),
                  unselectedTitleTextStyle:  TextStyle(
                    fontSize: ResponsiveSize.adjustTextSize(6, context),
                    color: AppColors.blackColor,
                  ),
                  selectedTitleTextStyle:
                       TextStyle(color: AppColors.blackColor,fontSize: ResponsiveSize.adjustTextSize(6, context),),
                  selectedIconColor: AppColors.blackColor,
                ),
                items: [
                  SideMenuExpansionItem(
                    title: 'Folder',
                    children: [
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              provider.changeNavIndex(0);
                              sideMenuController.changePage(provider.navIndex);
                            });
                          },
                          icon:  Icon(Icons.inbox,size: ResponsiveSize.adjustTextSize(6, context),),
                          trailing: Padding(
                            padding:  EdgeInsets.only(right: ResponsiveSize.adjustWidth(0.01, context)),
                            child: Text("5521",style: TextStyle(color: provider.navIndex ==0? AppColors.darkPetrolColor:Colors.blueGrey),),
                          ),
                          title: 'Inbox'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              provider.changeNavIndex(1);
                            });
                          },
                          icon:  Icon(Icons.mail_lock,size: ResponsiveSize.adjustTextSize(6, context),),
                          trailing: Padding(
                            padding:  EdgeInsets.only(right: ResponsiveSize.adjustWidth(0.01, context)),
                            child: Text("30",style: TextStyle(color: provider.navIndex ==1? AppColors.darkPetrolColor:Colors.blueGrey),),
                          ),
                          title: 'Junk Email'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              provider.changeNavIndex(2);

                            });
                          },
                          icon:  Icon(Icons.drafts,size: ResponsiveSize.adjustTextSize(6, context),),
                          trailing: Padding(
                            padding:  EdgeInsets.only(right: ResponsiveSize.adjustWidth(0.01, context)),
                            child: Text("31",style: TextStyle(color: provider.navIndex ==2? AppColors.darkPetrolColor:Colors.blueGrey),),
                          ),
                          title: 'Drafts'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              provider.changeNavIndex(3);

                            });
                          },
                          icon:  Icon(Icons.send,size: ResponsiveSize.adjustTextSize(6, context),),
                          trailing: Padding(
                            padding:  EdgeInsets.only(right: ResponsiveSize.adjustWidth(0.01, context)),
                            child: Text("1",style: TextStyle(color: provider.navIndex ==3? AppColors.darkPetrolColor:Colors.blueGrey),),
                          ),
                          title: 'Send Items'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              provider.changeNavIndex(4);

                            });
                          },
                          icon:  Icon(Icons.delete,size: ResponsiveSize.adjustTextSize(6, context),),
                          trailing: Padding(
                            padding:  EdgeInsets.only(right: ResponsiveSize.adjustWidth(0.01, context)),
                            child: Text("",style: TextStyle(color: provider.navIndex ==4? AppColors.darkPetrolColor:Colors.blueGrey),),
                          ),
                          title: 'Deleted Items'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              provider.changeNavIndex(5);

                            });
                          },
                          icon:  Icon(Icons.archive,size: ResponsiveSize.adjustTextSize(6, context),),
                          trailing: Padding(
                            padding:  EdgeInsets.only(right: ResponsiveSize.adjustWidth(0.01, context)),
                            child: Text("",style: TextStyle(color: provider.navIndex ==5? AppColors.darkPetrolColor:Colors.blueGrey),),
                          ),
                          title: 'Archive'),
                    ],
                  ),
                ],
                controller: sideMenuController),
          ),
          SizedBox(width: ResponsiveSize.adjustWidth(0.01, context),),
          Expanded(
            child: PageView(
              physics: const ClampingScrollPhysics(),
              controller: pageController,
              children:   const [
                Inbox(),
                JunkMails(),
                Drafts(),
                SendItems(),
                DeletedItems(),
                Archive()
              ],
            ),
          )
        ],
      ),
    );
  }
}
