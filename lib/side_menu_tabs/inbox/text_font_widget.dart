import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

import '../../utils/responsive_size.dart';

class TextFontWidget extends StatelessWidget {
  TextFontWidget({super.key});
  final HtmlEditorController controller =HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: ResponsiveSize.adjustHeight(0.075, context),
      width: ResponsiveSize.adjustWidth(0.82, context),
      child: HtmlEditor(controller: controller,
      ),
    );
  }
}
