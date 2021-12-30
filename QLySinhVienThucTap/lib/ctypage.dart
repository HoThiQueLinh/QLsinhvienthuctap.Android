import 'package:flutter/cupertino.dart';
import 'cty_item.dart';
import 'fake_data.dart';
class CongTyPage extends StatelessWidget{
    Widget build(BuildContext context){
      return GridView(
        padding: EdgeInsets.all(20),
        children: FAKE_CONGTY.map((eachClass) => CongTyItem(congTy:eachClass )).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ));
    }
}