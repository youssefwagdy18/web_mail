import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class IndexProvider extends ChangeNotifier{
  int navIndex=0;
  int index =0;
  List<int> selectedTabs =[];
  int visible =2;
 QuillController quillController =QuillController.basic();
  // QuillController quillControllerCc =QuillController.basic();
  // QuillController quillControllerBcc =QuillController.basic();
  // QuillController quillControllerSubject =QuillController.basic();



  HtmlEditorController controller =HtmlEditorController();
  changeIndex(int newIndex){
    index=newIndex;
    notifyListeners();
  }

  changeSelected(int index){
    if(selectedTabs.contains(index)){
      selectedTabs.remove(index);
    }else{
      selectedTabs.add(index);
    }
    selectedTabs.sort((a,b)=>a.compareTo(b));
    notifyListeners();
  }

  changeNavIndex(int newIndex) {
    if (navIndex == 0) {
      navIndex = newIndex;
    } else {
      navIndex = 0;
    }
    notifyListeners();
  }
  changeVisibilityOfNavBar(int inVisible){
    if(visible ==2){
      visible=inVisible;
    }else{
      visible=2;
    }
    notifyListeners();
  }

}