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
          Expanded(
            child: SideMenu(
                style: SideMenuStyle(
                  hoverColor: const Color(0xffcfe8ed),
                  unselectedIconColor: AppColors.blackColor,
                  selectedColor: const Color(0xffcfe8ed),
                  unselectedTitleTextStyle: const TextStyle(
                    color: AppColors.blackColor,
                  ),
                  selectedTitleTextStyle:
                      const TextStyle(color: AppColors.blackColor),
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
                          icon: const Icon(Icons.inbox),
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
                          icon: const Icon(Icons.mail_lock),
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
                          icon: const Icon(Icons.drafts),
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
                          icon: const Icon(Icons.send),
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
                          icon: const Icon(Icons.delete),
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
                          icon: const Icon(Icons.archive),
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
            flex: 4,
            child: PageView(
              controller: pageController,
              children:  const [
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
