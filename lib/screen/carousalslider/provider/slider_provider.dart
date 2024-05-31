import 'package:flutter/cupertino.dart';

class SliderProvider extends ChangeNotifier
{
  int currentPage = 0;
  void changeImage(int index){
    currentPage = index;
    notifyListeners();
  }
}