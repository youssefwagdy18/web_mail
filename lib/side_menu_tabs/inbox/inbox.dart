import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_ui_task/config/index_provider.dart';
import 'package:web_ui_task/side_menu_tabs/inbox/show_inbox_body.dart';
import 'package:web_ui_task/side_menu_tabs/inbox/show_sending_email.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/responsive_size.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  List<Widget> inboxNavBarItems = [const ShowInboxBody(), const ShowSendingEmail()];
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<IndexProvider>(context);
    return GestureDetector(
      onHorizontalDragUpdate: (updateDetails){},
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: inboxNavBarItems[provider.index],
        bottomNavigationBar:
        Padding(
          padding:EdgeInsets.only(left: ResponsiveSize.adjustWidth(0.01, context),
              right: ResponsiveSize.adjustWidth(0.3, context),
          top: ResponsiveSize.adjustHeight(0.01, context),
          bottom: ResponsiveSize.adjustHeight(0.01, context)),
          child: SizedBox(
            height: ResponsiveSize.adjustHeight(0.1, context),
            child: BottomNavigationBar(
              backgroundColor: AppColors.primaryGreyColor,
              elevation: 0,
              currentIndex: provider.index,
              selectedItemColor: AppColors.darkPetrolColor,
              unselectedItemColor: const Color(0xff575757),
              items: const [
                BottomNavigationBarItem(
                  label: 'Inbox',
                  icon: Icon(Icons.inbox),
                ),
                BottomNavigationBarItem(
                  label: 'Subject',
                  icon: Icon(Icons.edit),
                )
              ],
              onTap: (int index) {
                provider.changeIndex(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
