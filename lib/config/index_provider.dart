import 'package:flutter/material.dart';

class IndexProvider extends ChangeNotifier{
  int navIndex=0;
  int index =0;
  List<int> selectedTabs =[];
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
    print(selectedTabs);
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
}