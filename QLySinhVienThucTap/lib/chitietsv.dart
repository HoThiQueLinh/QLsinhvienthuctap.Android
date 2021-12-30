import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/models/SV.dart';
class DetailHSPage extends StatelessWidget{
  SV sv;
  DetailHSPage({this.sv});
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('${sv.name}'),),
        body: Column(
          children: <Widget>[
            Center(
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loading.gif',
                  image: sv.urlImage
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text('Thông tin sinh viên',style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold ),),
            ),
            // Text('Mã loại sách ${book.categoryId}',style: TextStyle(fontSize: 19,color: Colors.black),),
            Expanded(
                child:ListView.builder(
                    itemCount: this.sv.ingredients.length,
                    itemBuilder: (context,index){
                      String ingredient =this.sv.ingredients[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('${index+1}',style: TextStyle(fontSize: 19,color: Colors.black),),
                        ),
                        title: Text(ingredient,style: TextStyle(fontSize: 22),),
                      );
                    }
                )
            )
          ],
        )
    );
  }
}