import 'dart:math';

import 'package:flutter/cupertino.dart';

class SV {
  int id;
  String name;
  String urlImage;
//time to finish this food
  //one foods has many ingredients
  List<String> ingredients = List<String>();
  //reference: 1 Category has many Foods
  int congtyId;
  //constructor:
  SV({
    @required this.name,
    @required this.urlImage,
    this.ingredients,
     this.congtyId
  }) {
    //id is "auto-increment"
    this.id = Random().nextInt(1000);
  }
}

