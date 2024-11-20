import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:provider/provider.dart';
import 'package:web_ui_task/config/index_provider.dart';
import 'package:web_ui_task/utils/app_colors.dart';
import 'package:web_ui_task/utils/responsive_size.dart';

class ShowSendingEmail extends StatefulWidget {
  const ShowSendingEmail({super.key});

  @override
  State<ShowSendingEmail> createState() => _ShowSendingEmailState();
}

class _ShowSendingEmailState extends State<ShowSendingEmail> {
  TextEditingController toController = TextEditingController();
  TextEditingController ccController = TextEditingController();
  TextEditingController bccController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  HtmlEditorController htmlEditorController =HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<IndexProvider>(context);
    return Padding(
      padding: EdgeInsets.only(
          left: ResponsiveSize.adjustWidth(0.03, context),
          right: ResponsiveSize.adjustWidth(0.03, context),
          top: ResponsiveSize.adjustHeight(0.02, context)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: ResponsiveSize.adjustHeight(0.05, context),
                  width: ResponsiveSize.adjustWidth(0.05, context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          ResponsiveSize.adjustWidth(0.005, context)),
                      border: Border.all(
                          width: ResponsiveSize.adjustWidth(0.001, context),
                          color: AppColors.greyColor)),
                  child: Center(
                      child: Text(
                    'To',
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: ResponsiveSize.adjustTextSize(8, context)),
                  )),
                ),
                SizedBox(
                  width: ResponsiveSize.adjustWidth(0.015, context),
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: ResponsiveSize.adjustHeight(0.01, context),
                    top: ResponsiveSize.adjustHeight(0.01, context),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.greyColor,
                        width: ResponsiveSize.adjustWidth(0.001, context),
                      ),
                    ),
                  ),
                  width: ResponsiveSize.adjustWidth(0.5, context),
                  child: TextField(
                    decoration: const InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                    controller: toController,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: ResponsiveSize.adjustHeight(0.05, context),
                  width: ResponsiveSize.adjustWidth(0.05, context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          ResponsiveSize.adjustWidth(0.005, context)),
                      border: Border.all(
                          width: ResponsiveSize.adjustWidth(0.001, context),
                          color: AppColors.greyColor)),
                  child: Center(
                      child: Text(
                    'Cc',
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: ResponsiveSize.adjustTextSize(8, context)),
                  )),
                ),
                SizedBox(
                  width: ResponsiveSize.adjustWidth(0.015, context),
                ),
                Container(
                    padding: EdgeInsets.only(
                        bottom: ResponsiveSize.adjustHeight(0.01, context),
                        top: ResponsiveSize.adjustHeight(0.01, context)),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.greyColor,
                          width: ResponsiveSize.adjustWidth(0.001, context),
                        ),
                      ),
                    ),
                    width: ResponsiveSize.adjustWidth(0.5, context),
                    child: TextField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                      controller: ccController,
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: ResponsiveSize.adjustHeight(0.05, context),
                  width: ResponsiveSize.adjustWidth(0.05, context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          ResponsiveSize.adjustWidth(0.005, context)),
                      border: Border.all(
                          width: ResponsiveSize.adjustWidth(0.001, context),
                          color: AppColors.greyColor)),
                  child: Center(
                      child: Text(
                    'Bcc',
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: ResponsiveSize.adjustTextSize(8, context)),
                  )),
                ),
                SizedBox(
                  width: ResponsiveSize.adjustWidth(0.015, context),
                ),
                Container(
                    padding: EdgeInsets.only(
                        bottom: ResponsiveSize.adjustHeight(0.01, context),
                        top: ResponsiveSize.adjustHeight(0.01, context)),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.greyColor,
                          width: ResponsiveSize.adjustWidth(0.001, context),
                        ),
                      ),
                    ),
                    width: ResponsiveSize.adjustWidth(0.5, context),
                    child: TextField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                      controller: bccController,
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: ResponsiveSize.adjustHeight(0.01, context),
                  top: ResponsiveSize.adjustHeight(0.01, context)),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.greyColor,
                    width: ResponsiveSize.adjustWidth(0.001, context),
                  ),
                ),
              ),
              width: double.maxFinite,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Add subject here',
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
                controller: subjectController,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: ResponsiveSize.adjustHeight(0.02, context),
                  top: ResponsiveSize.adjustHeight(0.02, context)),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.greyColor,
                    width: ResponsiveSize.adjustWidth(0.001, context),
                  ),
                ),
              ),
              width: double.maxFinite,
              child: QuillEditor.basic(controller: provider.quillController,
              configurations: QuillEditorConfigurations(
                embedBuilders: kIsWeb ? FlutterQuillEmbeds.editorWebBuilders() : FlutterQuillEmbeds.editorBuilders(),
                textCapitalization: TextCapitalization.sentences,
              ),)
            ),
          ],
        ),
      ),
    );
  }
}
