import 'package:bhagvat_geeta_app/screen/home/model/home_model.dart';
import 'package:bhagvat_geeta_app/utils/json_helper.dart';
import 'package:flutter/material.dart';

import '../../../utils/share_helper.dart';

class HomeProvider with ChangeNotifier
{
  jsonHelper j1=jsonHelper();
  List<ChapterModel>BhagvatGeetalist=[];
  bool theme =false;
  bool changeTheme = false;
  ThemeMode mode = ThemeMode.light;
  IconData themeMode = Icons.dark_mode;
  bool isLight=false;

  Future<void> chapterGetData()
  async {
    List<ChapterModel> l1=await j1.BhagvatGeeta();
    BhagvatGeetalist=l1;
    notifyListeners();
  }
  void setTheme() async {
    theme = !theme;
    saveTheme(changeTheme: theme);
    changeTheme = (await applyTheme())!;
    if (changeTheme == true) {
      mode = ThemeMode.dark;
      themeMode = Icons.light_mode;
    } else if (changeTheme == false) {
      mode = ThemeMode.light;
      themeMode = Icons.dark_mode;
    }
    notifyListeners();
  }
  void getTheme() async {
    if (await applyTheme() == null) {
      changeTheme = false;
    } else {
      changeTheme = (await applyTheme())!;
    }
    if (changeTheme == true) {
      mode = ThemeMode.dark;
      themeMode = Icons.light_mode;
    } else if (changeTheme == false) {
      mode = ThemeMode.light;
      themeMode = Icons.dark_mode;
    } else {
      mode = ThemeMode.light;
      themeMode = Icons.dark_mode;
    }
    notifyListeners();
  }
  void changeThem()
  {
    isLight=!isLight;
    notifyListeners();

  }
}