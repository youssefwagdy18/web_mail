import 'package:flutter/material.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/responsive_size.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<IndexProvider>(context);
    return Scaffold(
        backgroundColor: AppColors.primaryGreyColor,
      body: SizedBox(
        width: ResponsiveSize.adjustWidth(0.27, context),
        child:  const DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: TabBar(
            unselectedLabelColor: Color(0xFF777777),
            labelColor: AppColors.blackColor,
            dividerColor: Colors.transparent,
            dividerHeight: 0,
            indicatorColor: AppColors.darkPetrolColor,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'View',
              ),
              // DropdownButtonHideUnderline(
              //   child: DropdownButton<String?>(
              //     value: selectedValue,
              //     hint: Text("View"),
              //     items: ["task 1", "task 2", "task 3"]
              //         .map(
              //           (e) => DropdownMenuItem(
              //             enabled: true,
              //         alignment: Alignment.center,
              //         child: Text(e),
              //         value: e,
              //       ),
              //     )
              //         .toList(),
              //     onChanged: (String? value) {
              //       setState(() {
              //
              //       });
              //     },
              //   ),
              // ),
              Tab(
                text: 'Help',
              ),
              // DropdownButton<String?>(
              //   value: selectedValue,
              //   onChanged: (value) {
              //     setState(() {
              //       selectedValue = value;
              //     });
              //     print("value");
              //   },

            ],
          ),
        ),
      ),

    );
  }
}
