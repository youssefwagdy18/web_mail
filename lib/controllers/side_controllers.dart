import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:web_ui_task/utils/app_colors.dart';

import '../utils/responsive_size.dart';

class SideControllers extends StatefulWidget {
  const SideControllers({super.key});

  @override
  State<SideControllers> createState() => _SideControllersState();
}

class _SideControllersState extends State<SideControllers> {
  TextEditingController textController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController attachController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: ResponsiveSize.adjustHeight(0.01, context),
          bottom: ResponsiveSize.adjustHeight(0.01, context),
          left: ResponsiveSize.adjustWidth(0.01, context),
          right: ResponsiveSize.adjustWidth(0.01, context)),
      width: ResponsiveSize.adjustWidth(0.15, context),
      height: ResponsiveSize.adjustHeight(0.75, context),
      decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                ResponsiveSize.adjustWidth(0.01, context),
              ),
              bottomLeft: Radius.circular(
                ResponsiveSize.adjustWidth(0.01, context),
              ))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Quick Access',
            style:
                TextStyle(fontSize: ResponsiveSize.adjustTextSize(8, context)),
          ),
          SizedBox(
            height: ResponsiveSize.adjustHeight(0.01, context),
          ),
          SizedBox(
            height: ResponsiveSize.adjustHeight(0.045, context),
            width: ResponsiveSize.adjustWidth(0.25, context),
            child: TextFormField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      left: ResponsiveSize.adjustWidth(0.01, context),
                      right: ResponsiveSize.adjustWidth(0.01, context),
                      top: ResponsiveSize.adjustHeight(0.01, context),
                      bottom: ResponsiveSize.adjustHeight(0.01, context)),
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
                  hintText: 'Enter your text here',
                  hintStyle: const TextStyle(color: Colors.grey)),
              controller: textController,
            ),
          ),
          SizedBox(
            height: ResponsiveSize.adjustHeight(0.01, context),
          ),
          SizedBox(
            height: ResponsiveSize.adjustHeight(0.045, context),
            width: ResponsiveSize.adjustWidth(0.25, context),
            child: TextFormField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      left: ResponsiveSize.adjustWidth(0.01, context),
                      right: ResponsiveSize.adjustWidth(0.01, context),
                      top: ResponsiveSize.adjustHeight(0.01, context),
                      bottom: ResponsiveSize.adjustHeight(0.01, context)),
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
                  hintText: 'Attach your file here',
                  hintStyle: const TextStyle(color: Colors.grey),
              suffixIcon: InkWell(
                  onTap: (){},
                  child: Icon(Icons.attach_file))),
              controller: attachController,
            ),
          ),
          SizedBox(
            height: ResponsiveSize.adjustHeight(0.01, context),
          ),
          SizedBox(
              height: ResponsiveSize.adjustHeight(0.045, context),
              width: ResponsiveSize.adjustWidth(0.25, context),
              child: TextField(
                  controller:
                      dateController, //editing controller of this TextField
                  decoration: InputDecoration(
                    icon: const Icon(Icons.calendar_today), //icon of text field
                    labelText: DateFormat.yMd()
                        .format(selectedDate), //label text of field
                  ),
                  readOnly: true,
                  onTap: () async {
                    showCalender();
                  })),
           SizedBox(
            height: ResponsiveSize.adjustHeight(0.4, context),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.petrolColor,
              fixedSize: Size(ResponsiveSize.adjustWidth(0.1, context), ResponsiveSize.adjustHeight(0.05, context))
            ),
            child: Text(
              'Confirm',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: ResponsiveSize.adjustTextSize(8, context),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showCalender() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 1000)),
        lastDate: DateTime.now().add(const Duration(days: 1000)));
    selectedDate = chosenDate ?? DateTime.now();
    setState(() {});
  }
}
