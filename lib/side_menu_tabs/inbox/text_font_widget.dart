import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:provider/provider.dart';
import 'package:web_ui_task/config/index_provider.dart';
import 'package:web_ui_task/utils/app_colors.dart';

import '../../utils/responsive_size.dart';

class TextFontWidget extends StatelessWidget {
  TextFontWidget({super.key});
  final HtmlEditorController controller = HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<IndexProvider>(context);
    return SizedBox(
      height: ResponsiveSize.adjustHeight(0.075, context),
      width: ResponsiveSize.adjustWidth(0.82, context),
      child: QuillToolbar.simple(
        controller: provider.quillController,
        configurations:
             QuillSimpleToolbarConfigurations(multiRowsDisplay: false,decoration: BoxDecoration(
              color: AppColors.whiteColor,
            ),
              embedButtons: FlutterQuillEmbeds.toolbarButtons(),
            ),
      ),
    );
  }
}
