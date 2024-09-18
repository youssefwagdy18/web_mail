import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
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
  int navIndex =0;

  @override
  void initState() {
    sideMenuController.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                              sideMenuController.changePage(index);
                              navIndex =0;
                            });
                          },
                          icon: const Icon(Icons.inbox),
                          trailing: Text("5521",style: TextStyle(color: navIndex ==0? AppColors.darkPetrolColor:Colors.blueGrey),),
                          title: 'Inbox'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              navIndex =1;
                            });
                          },
                          icon: const Icon(Icons.mail_lock),
                          trailing: Text("30",style: TextStyle(color: navIndex ==1? AppColors.darkPetrolColor:Colors.blueGrey),),
                          title: 'Junk Email'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              navIndex =2;
                            });
                          },
                          icon: const Icon(Icons.drafts),
                          trailing: Text("31",style: TextStyle(color: navIndex ==2? AppColors.darkPetrolColor:Colors.blueGrey),),
                          title: 'Darfts'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              navIndex =3;
                            });
                          },
                          icon: const Icon(Icons.send),
                          trailing: Text("1",style: TextStyle(color: navIndex ==3? AppColors.darkPetrolColor:Colors.blueGrey),),
                          title: 'Send Items'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              navIndex =4;
                            });
                          },
                          icon: const Icon(Icons.delete),
                          trailing: Text("",style: TextStyle(color: navIndex ==4? AppColors.darkPetrolColor:Colors.blueGrey),),
                          title: 'Deleted Items'),
                      SideMenuItem(
                          onTap: (index, sideMenuController) {
                            setState(() {
                              sideMenuController.changePage(index);
                              navIndex =5;
                            });
                          },
                          icon: const Icon(Icons.archive),
                          trailing: Text("",style: TextStyle(color: navIndex ==5? AppColors.darkPetrolColor:Colors.blueGrey),),
                          title: 'Archive'),
                    ],
                  ),
                ],
                controller: sideMenuController),
          ),
          SizedBox(width: ResponsiveSize.adjustWidth(0.01, context),),
          Expanded(
            flex: 3,
            child: PageView(
              controller: pageController,
              children:  [
                Inbox(),
                const JunkMails(),
                const Drafts(),
                const SendItems(),
                const DeletedItems(),
                const Archive()
              ],
            ),
          )
        ],
      ),
    );
  }
}
