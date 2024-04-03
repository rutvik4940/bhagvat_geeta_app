import 'dart:convert';

import 'package:bhagvat_geeta_app/screen/home/model/home_model.dart';
import 'package:flutter/services.dart';

class jsonHelper {
  Future<List<ChapterModel>> BhagvatGeeta() async {

      String bhagvatstring= await rootBundle.loadString("assets/json/verse.json");
      List jsonlist=jsonDecode(bhagvatstring);
      List<ChapterModel>bhagvatlist=jsonlist.map((e) => ChapterModel.mapToModel(e)).toList();
      return bhagvatlist;
  }
}